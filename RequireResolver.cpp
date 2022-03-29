#include "RequireResolver.h"
#include "FileUtils.h"
#include "Luau/FileResolver.h"
#include "Luau/Config.h"
#include "extern/json.hpp"

using json = nlohmann::json;

static bool endsWith(std::string str, std::string suffix)
{
    return str.size() >= suffix.size() && 0 == str.compare(str.size() - suffix.size(), suffix.size(), suffix);
}

RojoResolver::RojoResolver(std::string sourceMapPath)
    : sourceMapPath(sourceMapPath)
{
    std::optional<std::string> projectSource = readFile(sourceMapPath);
    if (projectSource)
    {
        auto j = json::parse(*projectSource);
        std::string name;
        j.at("name").get_to(name);
        printf("%s\n", name.c_str());

        auto rootNode = ProjectNode{"game"};
    }

    // printf("%s\n", (*projectSource).c_str());
}

std::optional<std::string> RojoResolver::resolveRequireToRealPath(const std::string& requirePath)
{
    printf("attempting to resolve %s\n", requirePath.c_str());
    return "C:\\Users\\Development\\Documents\\luau-cli-tool\\aModule.lua";
    // return std::nullopt;
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