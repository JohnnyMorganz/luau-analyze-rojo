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

struct ResolvedSourceMap
{
    SourceNode root;                                                   // The resolved root
    std::unordered_map<std::string, std::string> realPathToVirtualMap; // Map between real file paths and virtual Rojo paths
};

namespace RojoResolver
{
std::optional<ResolvedSourceMap> parseSourceMap(const std::string& sourceMapPath);
std::optional<std::string> resolveRequireToRealPath(const std::string& requirePath, const SourceNode& root);
Luau::SourceCode::Type sourceCodeTypeFromPath(const std::string& path);
std::optional<std::string> resolveRealPathToVirtual(const ResolvedSourceMap& sourceMap, const std::string& filePath);
}; // namespace RojoResolver

void dumpSourceMap(const SourceNode& root, int level);