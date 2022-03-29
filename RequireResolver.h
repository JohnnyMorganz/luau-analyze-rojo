#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>

#include "Luau/FileResolver.h"

struct ProjectNode
{
    std::string name;
    std::string path;
    mutable std::unordered_map<std::string, ProjectNode> children;
};

struct RojoResolver
{
    RojoResolver(std::string sourceMapPath);
    virtual ~RojoResolver() {}

    std::optional<std::string> resolveRequireToRealPath(const std::string& requirePath);
    Luau::SourceCode::Type sourceCodeTypeFromPath(const std::string& path);

public:
    std::string sourceMapPath;
    ProjectNode root;
};