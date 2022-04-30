#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>
#include <memory>
#include <unordered_map>
#include <filesystem>

#include "Luau/FileResolver.h"

using SourceNodePtr = std::shared_ptr<struct SourceNode>;

struct SourceNode
{
    std::string name;
    std::optional<std::string> className; // TODO: make no longer optional when removing project file parsing
    std::vector<std::filesystem::path> filePaths;
    std::vector<SourceNodePtr> children;
};

struct ResolvedSourceMap
{
    SourceNodePtr root;                                                // The resolved root
    std::unordered_map<std::string, std::string> realPathToVirtualMap; // Map between real (canonical) file paths and virtual Rojo paths
};

namespace RojoResolver
{
std::optional<ResolvedSourceMap> parseProjectFile(const std::filesystem::path& projectFilePath);
std::optional<ResolvedSourceMap> parseSourceMap(const std::filesystem::path& projectFilePath);
std::optional<SourceNodePtr> resolveRequireToSourceNode(const std::string& requirePath, const SourceNodePtr& root);
std::optional<std::filesystem::path> resolveRequireToRealPath(const std::string& requirePath, const SourceNodePtr& root);
std::optional<std::filesystem::path> getRelevantFilePath(const SourceNode& node);
std::optional<SourceNodePtr> findChildWithName(const SourceNode& node, const std::string_view& name);
Luau::SourceCode::Type sourceCodeTypeFromClassName(const std::string& className);
Luau::SourceCode::Type sourceCodeTypeFromPath(const std::filesystem::path& path);
std::optional<std::string> resolveRealPathToVirtual(const ResolvedSourceMap& sourceMap, const std::filesystem::path& filePath);
}; // namespace RojoResolver

void dumpSourceMap(const SourceNode& root, int level);