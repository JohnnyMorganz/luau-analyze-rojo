#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>

#include "Luau/FileResolver.h"

struct SourceNode
{
    std::optional<std::string> path;
    std::unordered_map<std::string, SourceNode> children;
};

struct RojoResolver
{
    std::unordered_map<std::string, SourceNode> roots;

    void parseSourceMap(const std::string& sourceMapPath);
    std::optional<std::string> resolveRequireToRealPath(const std::string& requirePath);
    Luau::SourceCode::Type sourceCodeTypeFromPath(const std::string& path);
};