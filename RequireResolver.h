#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>
#include <memory>

#include "Luau/FileResolver.h"

struct SourceNode
{
    SourceNode* parent;
    std::optional<std::string> path;
    std::unordered_map<std::string, std::shared_ptr<SourceNode>> children;
};

struct RojoResolver
{
    std::unordered_map<std::string, SourceNode> roots;

    std::optional<SourceNode> parseSourceMap(const std::string& sourceMapPath);
    std::optional<std::string> resolveRequireToRealPath(const std::string& requirePath, const SourceNode& root);
    Luau::SourceCode::Type sourceCodeTypeFromPath(const std::string& path);
};

void dumpSourceMap(const SourceNode& root, int level);