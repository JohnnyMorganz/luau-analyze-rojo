#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>
#include <memory>
#include <unordered_map>
#include <filesystem>

#include "Luau/FileResolver.h"

struct SourceNode
{
    std::optional<std::filesystem::path> path;
    std::optional<std::string> className;
    std::unordered_map<std::string, std::shared_ptr<SourceNode>> children;
};

struct ResolvedSourceMap
{
    SourceNode root;                                                   // The resolved root
    std::unordered_map<std::string, std::string> realPathToVirtualMap; // Map between real (canonical) file paths and virtual Rojo paths
};

namespace RojoResolver
{
std::optional<ResolvedSourceMap> parseSourceMap(const std::filesystem::path& sourceMapPath);
std::optional<SourceNode> resolveRequireToSourceNode(const std::string& requirePath, const SourceNode& root);
std::optional<std::filesystem::path> resolveRequireToRealPath(const std::string& requirePath, const SourceNode& root);
Luau::SourceCode::Type sourceCodeTypeFromPath(const std::filesystem::path& path);
std::optional<std::string> resolveRealPathToVirtual(const ResolvedSourceMap& sourceMap, const std::filesystem::path& filePath);
}; // namespace RojoResolver

void dumpSourceMap(const SourceNode& root, int level);