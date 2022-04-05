// This file is part of the Luau programming language and is licensed under MIT License; see LICENSE.txt for details
#include "FileUtils.h"

#include "Luau/Common.h"

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <Windows.h>
#else
#include <dirent.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#endif

#include <string.h>
#include <iostream>
#include <fstream>
#include <filesystem>
#include <sstream>

#ifdef _WIN32
static std::wstring fromUtf8(const std::string& path)
{
    size_t result = MultiByteToWideChar(CP_UTF8, 0, path.data(), int(path.size()), nullptr, 0);
    LUAU_ASSERT(result);

    std::wstring buf(result, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, path.data(), int(path.size()), &buf[0], int(buf.size()));

    return buf;
}

static std::string toUtf8(const std::wstring& path)
{
    size_t result = WideCharToMultiByte(CP_UTF8, 0, path.data(), int(path.size()), nullptr, 0, nullptr, nullptr);
    LUAU_ASSERT(result);

    std::string buf(result, '\0');
    WideCharToMultiByte(CP_UTF8, 0, path.data(), int(path.size()), &buf[0], int(buf.size()), nullptr, nullptr);

    return buf;
}
#endif

std::optional<std::string> readFile(const std::string& name)
{
#ifdef _WIN32
    FILE* file = _wfopen(fromUtf8(name).c_str(), L"rb");
#else
    FILE* file = fopen(name.c_str(), "rb");
#endif

    if (!file)
        return std::nullopt;

    fseek(file, 0, SEEK_END);
    long length = ftell(file);
    if (length < 0)
    {
        fclose(file);
        return std::nullopt;
    }
    fseek(file, 0, SEEK_SET);

    std::string result(length, 0);

    size_t read = fread(result.data(), 1, length, file);
    fclose(file);

    if (read != size_t(length))
        return std::nullopt;

    // Skip first line if it's a shebang
    if (length > 2 && result[0] == '#' && result[1] == '!')
        result.erase(0, result.find('\n'));

    return result;
}

std::optional<std::string> readStdin()
{
    std::string result;
    char buffer[4096] = {};

    while (fgets(buffer, sizeof(buffer), stdin) != nullptr)
        result.append(buffer);

    // If eof was not reached for stdin, then a read error occurred
    if (!feof(stdin))
        return std::nullopt;

    return result;
}

std::optional<std::string> readFile(const std::filesystem::path& filePath)
{
    std::ifstream fileContents;
    fileContents.open(filePath);

    std::string output;
    std::stringstream buffer;

    if (fileContents)
    {
        buffer << fileContents.rdbuf();
        output = buffer.str();
        return output;
    }
    else
    {
        return std::nullopt;
    }
}

template<typename Ch>
static void joinPaths(std::basic_string<Ch>& str, const Ch* lhs, const Ch* rhs)
{
    str = lhs;
    if (!str.empty() && str.back() != '/' && str.back() != '\\' && *rhs != '/' && *rhs != '\\')
        str += '/';
    str += rhs;
}

std::string joinPaths(const std::string& lhs, const std::string& rhs)
{
    std::string result = lhs;
    if (!result.empty() && result.back() != '/' && result.back() != '\\')
        result += '/';
    result += rhs;
    return result;
}

std::optional<std::string> getParentPath(const std::string& path)
{
    if (path == "" || path == "." || path == "/")
        return std::nullopt;

#ifdef _WIN32
    if (path.size() == 2 && path.back() == ':')
        return std::nullopt;
#endif

    std::string::size_type slash = path.find_last_of("\\/", path.size() - 1);

    if (slash == 0)
        return "/";

    if (slash != std::string::npos)
        return path.substr(0, slash);

    return "";
}

std::string getExtension(const std::string& path)
{
    std::string::size_type dot = path.find_last_of(".\\/");

    if (dot == std::string::npos || path[dot] != '.')
        return "";

    return path.substr(dot);
}

std::vector<std::filesystem::path> getSourceFiles(int argc, char** argv)
{
    std::vector<std::filesystem::path> files;

    for (int i = 1; i < argc; ++i)
    {
        // Treat '-' as a special file whose source is read from stdin
        // All other arguments that start with '-' are skipped
        if (argv[i][0] == '-' && argv[i][1] != '\0')
            continue;

        auto path = std::filesystem::path(argv[i]);
        if (path != "-" && !std::filesystem::exists(path))
        {
            std::cerr << "Cannot get " << path << ": path does not exist\n";
            continue;
        }


        if (std::filesystem::is_directory(path))
        {
            for (std::filesystem::recursive_directory_iterator next(path), end; next != end; ++next)
            {
                if (next->is_regular_file() && next->path().has_extension())
                {
                    auto ext = next->path().extension();
                    if (ext == ".lua" || ext == ".luau")
                    {
                        files.push_back(next->path());
                    }
                }
            }
        }
        else
        {
            files.push_back(path);
        }
    }

    return files;
}