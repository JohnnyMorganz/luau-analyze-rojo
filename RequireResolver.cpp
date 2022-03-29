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
    std::unordered_map<std::string, ProjectNode> children;
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
            p.children[el.key()] = el.value().get<ProjectNode>();
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
void populateChildren(SourceNode& parent, const std::string& name, ns::ProjectNode node, const std::string& basePath);

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
                populateChildren(node, child.first, child.second, fullPath);
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
                        node.children[fileName] = childNode;
                    }
                });
        }
    }
    else
    {
        node.path = path;
    }
}

void populateChildren(SourceNode& parent, const std::string& name, ns::ProjectNode node, const std::string& basePath)
{
    SourceNode childNode;
    if (node.path)
    {

        handleNodePath(childNode, *node.path, basePath);
    }

    for (auto& child : node.children)
    {
        populateChildren(childNode, child.first, child.second, basePath);
    }

    parent.children[name] = childNode;
}

void dumpSourceMap(SourceNode root, int level = 0)
{
    if (root.path)
    {

        printf("%*sPath: %s\n", level, "", (*root.path).c_str());
    }
    else
    {
        printf("%*sNO PATH\n", level, "");
    }

    if (root.children.size() > 0)
    {
        for (auto& child : root.children)
        {
            printf("%*s%s\n", level, "", child.first.c_str());
            dumpSourceMap(child.second, level + 4);
        }
    }
}

void RojoResolver::parseSourceMap(const std::string& sourceMapPath)
{
    std::optional<std::string> projectSource = readFile(sourceMapPath);
    if (projectSource)
    {
        auto j = json::parse(*projectSource);
        auto project = j.get<ns::Project>();

        SourceNode rootNode;
        for (auto& child : project.tree.children)
        {
            populateChildren(rootNode, child.first, child.second, "");
        }
        printf("game\n");
        dumpSourceMap(rootNode, 4);
        roots["game"] = rootNode; // TODO: handle if root is not a datamodel
    }
}

std::optional<std::string> RojoResolver::resolveRequireToRealPath(const std::string& requirePath)
{
    printf("attempting to resolve %s\n", requirePath.c_str());

    auto pathParts = Luau::split(requirePath, '/');
    std::optional<SourceNode> currentNode = std::nullopt;

    return roots["game"].children["ReplicatedStorage"].children["SharedModule1"].path;

    for (auto& part : pathParts)
    {
        printf("searching: %s\n", std::string(part).c_str());
        if (currentNode)
        {
            if (currentNode.value().children.find(std::string(part)) != currentNode.value().children.end())
            {
                currentNode = currentNode.value().children.at(std::string(part));
            }
            else
            {
                return std::nullopt;
            }
        }
        else
        {
            if (roots.count(std::string(part)) > 0)
            {
                currentNode = roots.at(std::string(part));
            }
            else
            {
                return std::nullopt;
            }
        };
    }

    if (currentNode)
    {
        return (*currentNode).path;
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