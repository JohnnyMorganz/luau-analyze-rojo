#include "RequireResolver.h"
#include "FileUtils.h"
#include "Luau/FileResolver.h"
#include "Luau/Config.h"
#include "Luau/StringUtils.h"
#include "extern/json.hpp"
#include <iostream>

using json = nlohmann::json;

namespace ns
{
struct ProjectNode
{
    std::optional<std::string> class_name;
    std::optional<std::filesystem::path> path;
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


void handleNodePath(SourceNode& node, const std::filesystem::path& path, const std::filesystem::path& basePath);
void populateChildren(SourceNode& parent, const std::string& name, const ns::ProjectNode& node, const std::filesystem::path& basePath);

std::string removeRojoExtension(std::string& nameWithExtension)
{
    // Remove specific extensions
    for (auto& ext : {".server.lua", ".server.luau", ".client.lua", ".client.luau", ".lua", ".luau", ".txt", ".csv"})
    {
        std::string::size_type extension = nameWithExtension.find(ext);
        if (extension != std::string::npos)
            return nameWithExtension.erase(extension, strlen(ext));
    }
    return nameWithExtension;
}

void readProjectFile(SourceNode& node, ns::Project& project, const std::filesystem::path& basePath)
{
    node.className = project.tree.class_name;
    if (project.tree.path)
    {

        handleNodePath(node, project.tree.path.value(), basePath);
    }
    for (auto& child : project.tree.children)
    {
        populateChildren(node, child.first, *child.second.get(), basePath);
    }
}

void handleNodePath(SourceNode& node, const std::filesystem::path& path, const std::filesystem::path& basePath)
{
    auto fullPath = basePath / path;

    if (std::filesystem::is_directory(fullPath))
    {
        node.className = "Folder";

        // Check if default.project.json exists
        std::optional<std::string> nestedProjectSource = readFile(fullPath / "default.project.json");
        if (nestedProjectSource)
        {
            auto j = json::parse(*nestedProjectSource);
            auto project = j.get<ns::Project>();
            readProjectFile(node, project, fullPath);
        }
        else
        {
            for (std::filesystem::directory_iterator next(fullPath), end; next != end; ++next)
            {
                auto path = next->path();
                auto fullFileName = path.filename().generic_string();
                auto fileName = removeRojoExtension(fullFileName);
                if (fileName == "init")
                {
                    auto sourceType = RojoResolver::sourceCodeTypeFromPath(path);
                    if (sourceType == Luau::SourceCode::Script)
                    {
                        node.className = "Script";
                    }
                    else if (sourceType == Luau::SourceCode::Local)
                    {
                        node.className = "LocalScript";
                    }
                    else
                    {
                        node.className = "ModuleScript";
                    }
                    node.path = path;
                }
                else
                {
                    SourceNode childNode;
                    handleNodePath(childNode, path, ""); // Don't need to basePath here since name is the full path
                    node.children.insert(std::pair(fileName, std::make_shared<SourceNode>(childNode)));
                }
            }
        }
    }
    else
    {
        node.path = fullPath;
        auto sourceType = RojoResolver::sourceCodeTypeFromPath(fullPath);
        if (sourceType == Luau::SourceCode::Script)
        {
            node.className = "Script";
        }
        else if (sourceType == Luau::SourceCode::Local)
        {
            node.className = "LocalScript";
        }

        if (fullPath.has_extension())
        {
            auto ext = fullPath.extension();
            if ((ext == ".lua" || ext == ".luau") && !node.className.has_value())
            {
                node.className = "ModuleScript";
            }
            else if (ext == ".txt")
            {
                node.className = "StringValue";
            }
            else if (ext == ".csv")
            {
                node.className = "LocalizationTable";
            }
            // TODO: Handle .json, .model.json, .project.json
            // TODO: Handle .meta.json
        }
    }
}

void populateChildren(SourceNode& parent, const std::string& name, const ns::ProjectNode& node, const std::filesystem::path& basePath)
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
    if (root.path.has_value())
    {
        try
        {
            auto canonicalPath = std::filesystem::canonical(root.path.value());
            printf("%*sPath: %s\n", level, "", canonicalPath.generic_string().c_str());
        }
        catch (const std::exception& ex)
        {
            printf("%*sPath: FAILED TO GENERATE: %s\n", level, "", ex.what());
        }
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

        try
        {
            auto canonicalPath = std::filesystem::canonical(node.path.value());
            map[canonicalPath.generic_string()] = base;
        }
        catch (const std::exception& ex)
        {
            std::cout << "Failed to generate canonical path for " << node.path.value() << ":\n" << ex.what() << '\n';
        }
    }

    for (auto& ch : node.children)
    {
        writePathsToMap(*ch.second, base + "/" + ch.first, map);
    }
}

std::optional<ResolvedSourceMap> RojoResolver::parseSourceMap(const std::filesystem::path& sourceMapPath)
{
    std::optional<std::string> projectSource = readFile(sourceMapPath);
    if (projectSource)
    {
        try
        {

            auto j = json::parse(projectSource.value());
            auto project = j.get<ns::Project>();

            // Create root node
            SourceNode rootNode;
            readProjectFile(rootNode, project, "");

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
        catch (const std::exception& ex)
        {
            fprintf(stderr, "Failed to resolve project file: %s\n", ex.what());
        }
    }

    return std::nullopt;
}

std::optional<SourceNode> RojoResolver::resolveRequireToSourceNode(const std::string& requirePath, const SourceNode& root)
{
    auto pathParts = Luau::split(requirePath, '/');
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

    return currentNode;
}

std::optional<std::filesystem::path> RojoResolver::resolveRequireToRealPath(const std::string& requirePath, const SourceNode& root)
{
    if (auto node = RojoResolver::resolveRequireToSourceNode(requirePath, root))
    {
        return node.value().path;
    }
    return std::nullopt;
}

std::optional<std::string> RojoResolver::resolveRealPathToVirtual(const ResolvedSourceMap& sourceMap, const std::filesystem::path& filePath)
{
    try
    {
        auto canonical = std::filesystem::canonical(filePath).generic_string();
        if (sourceMap.realPathToVirtualMap.find(canonical) != sourceMap.realPathToVirtualMap.end())
        {
            return sourceMap.realPathToVirtualMap.at(canonical);
        }
    }
    catch (const std::exception& ex)
    {
        std::cerr << "Failed to resolve provided file path " << filePath << ":\n" << ex.what() << '\n';
    }

    return std::nullopt;
}

static bool endsWith(std::string str, std::string suffix)
{
    return str.size() >= suffix.size() && 0 == str.compare(str.size() - suffix.size(), suffix.size(), suffix);
}

Luau::SourceCode::Type RojoResolver::sourceCodeTypeFromPath(const std::filesystem::path& requirePath)
{
    auto filename = requirePath.filename().generic_string();
    if (endsWith(filename, ".server.lua") || endsWith(filename, ".server.luau"))
    {
        return Luau::SourceCode::Type::Script;
    }
    else if (endsWith(filename, ".client.lua") || endsWith(filename, ".client.luau"))
    {
        return Luau::SourceCode::Type::Local;
    }

    return Luau::SourceCode::Type::Module;
}