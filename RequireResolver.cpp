#include "RequireResolver.h"
#include "FileUtils.h"
#include "Luau/FileResolver.h"
#include "Luau/Config.h"
#include "Luau/StringUtils.h"
#include "extern/json.hpp"

using json = nlohmann::json;

namespace ns
{
struct ProjectNode
{
    std::optional<std::string> class_name;
    std::optional<std::string> path;
    std::unordered_map<std::string, std::shared_ptr<ProjectNode>> children;
};

struct Project
{
    std::string name;
    ProjectNode tree;
};

void from_json(const json& j, ProjectNode& p)
{
    if (j.count("$className") != 0)
        j.at("$className").get_to(p.class_name);
    if (j.count("$path") != 0)
        j.at("$path").get_to(p.path);

    for (auto& el : j.items())
    {
        if (!Luau::startsWith(el.key(), "$"))
        {
            p.children.insert({el.key(), std::make_shared<ProjectNode>(el.value().get<ProjectNode>())});
        };
    }
};

void from_json(const json& j, Project& p)
{
    j.at("name").get_to(p.name);
    j.at("tree").get_to(p.tree);
};
}; // namespace ns


void handleNodePath(SourceNode& node, const std::string& path, const std::string& basePath);
void populateChildren(SourceNode& parent, const std::string& name, const ns::ProjectNode& node, const std::string& basePath);

void handleNodePath(SourceNode& node, const std::string& path, const std::string& basePath)
{
    const std::string& fullPath = joinPaths(basePath, path);

    if (isDirectory(fullPath))
    {
        // Check if default.project.json exists
        std::optional<std::string> nestedProjectSource = readFile(joinPaths(fullPath, "default.project.json"));
        if (nestedProjectSource)
        {

            auto j = json::parse(*nestedProjectSource);
            auto project = j.get<ns::Project>();

            if (project.tree.path)
            {
                handleNodePath(node, *project.tree.path, fullPath);
            }

            for (auto& child : project.tree.children)
            {
                populateChildren(node, child.first, *child.second.get(), fullPath);
            }
        }
        else
        {
            traverseDirectory(fullPath, false,
                [&](const std::string& name)
                {
                    auto fileName = getFileName(name);

                    if (fileName == "init")
                    {
                        node.path = name;
                    }
                    else
                    {
                        SourceNode childNode;
                        handleNodePath(childNode, name, ""); // Don't need to basePath here since name is the full path
                        node.children.insert(std::pair(fileName, std::make_shared<SourceNode>(childNode)));
                    }
                });
        }
    }
    else
    {
        node.path = path;
    }
}

void populateChildren(SourceNode& parent, const std::string& name, const ns::ProjectNode& node, const std::string& basePath)
{
    SourceNode childNode;
    childNode.className = node.class_name;
    if (node.path)
    {
        handleNodePath(childNode, *node.path, basePath);
    }

    for (auto& child : node.children)
    {
        populateChildren(childNode, child.first, *child.second.get(), basePath);
    }

    parent.children.insert(std::pair(name, std::make_shared<SourceNode>(childNode)));
}

void dumpSourceMap(const SourceNode& root, int level = 0)
{
    if (root.path)
    {

        printf("%*sPath: %s\n", level, "", (*root.path).c_str());
    }
    else
    {
        printf("%*sNO PATH\n", level, "");
    }
    if (root.className)
    {
        printf("%*sClassName: %s\n", level, "", (*root.className).c_str());
    }

    if (root.children.size() > 0)
    {
        for (auto& child : root.children)
        {
            printf("%*s%s\n", level, "", child.first.c_str());
            dumpSourceMap(*child.second.get(), level + 4);
        }
    }
}

void writePathsToMap(SourceNode& node, std::string base, std::unordered_map<std::string, std::string>& map)
{
    if (node.path)
    {
        map[node.path.value()] = base;
    }

    for (auto& ch : node.children)
    {
        writePathsToMap(*ch.second, base + "/" + ch.first, map);
    }
}

std::optional<ResolvedSourceMap> RojoResolver::parseSourceMap(const std::string& sourceMapPath)
{
    std::optional<std::string> projectSource = readFile(sourceMapPath);
    if (projectSource)
    {
        auto j = json::parse(*projectSource);
        auto project = j.get<ns::Project>();

        // Create root node
        SourceNode rootNode;
        rootNode.className = project.tree.class_name;
        if (project.tree.path)
        {

            handleNodePath(rootNode, project.tree.path.value(), "");
        }
        for (auto& child : project.tree.children)
        {
            populateChildren(rootNode, child.first, *child.second.get(), "");
        }

        // Create map between real file paths to virtual
        std::unordered_map<std::string, std::string> pathToVirtualMap;
        std::string base = "game";
        if (!project.tree.class_name.has_value() || project.tree.class_name.value() != "DataModel")
        {
            base = "ProjectRoot";
        }
        writePathsToMap(rootNode, base, pathToVirtualMap);

        return ResolvedSourceMap{rootNode, pathToVirtualMap};
    }

    return std::nullopt;
}

std::optional<std::string> RojoResolver::resolveRequireToRealPath(const std::string& requirePath, const SourceNode& root)
{
    auto pathParts = Luau::split(requirePath, '/');
    // auto root = pathParts.front();

    // if (roots.find(std::string(root)) == roots.end())
    //     return std::nullopt;

    // SourceNode currentNode = roots.at(std::string(root));
    SourceNode currentNode = root;

    auto it = ++pathParts.begin(); // Skip first element
    while (it != pathParts.end())
    {
        auto part = *it;

        if (currentNode.children.find(std::string(part)) != currentNode.children.end())
        {
            currentNode = *currentNode.children.at(std::string(part));
        }
        else
        {
            return std::nullopt;
        }



        it++;
    }

    return currentNode.path;
}

std::optional<std::string> RojoResolver::resolveRealPathToVirtual(const ResolvedSourceMap& sourceMap, const std::string& filePath)
{
    if (sourceMap.realPathToVirtualMap.find(filePath) != sourceMap.realPathToVirtualMap.end())
    {
        return sourceMap.realPathToVirtualMap.at(filePath);
    }

    return std::nullopt;
}

static bool endsWith(std::string str, std::string suffix)
{
    return str.size() >= suffix.size() && 0 == str.compare(str.size() - suffix.size(), suffix.size(), suffix);
}

Luau::SourceCode::Type RojoResolver::sourceCodeTypeFromPath(const std::string& requirePath)
{
    if (endsWith(requirePath, ".server.lua") || endsWith(requirePath, ".server.luau"))
    {
        return Luau::SourceCode::Type::Script;
    }
    else if (endsWith(requirePath, ".client.lua") || endsWith(requirePath, ".client.luau"))
    {
        return Luau::SourceCode::Type::Local;
    }

    return Luau::SourceCode::Type::Module;
}