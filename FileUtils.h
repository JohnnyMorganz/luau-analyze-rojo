// This file is part of the Luau programming language and is licensed under MIT License; see LICENSE.txt for details
#pragma once

#include <optional>
#include <string>
#include <functional>
#include <vector>
#include <filesystem>

std::optional<std::string> readFile(const std::string& name);
std::optional<std::string> readFile(const std::filesystem::path& name);
std::optional<std::string> readStdin();

std::string joinPaths(const std::string& lhs, const std::string& rhs);
std::optional<std::string> getParentPath(const std::string& path);
std::vector<std::filesystem::path> getSourceFiles(int argc, char** argv);