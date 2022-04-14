// This file is part of the Luau programming language and is licensed under MIT License; see LICENSE.txt for details
#include "Luau/ModuleResolver.h"
#include "Luau/TypeInfer.h"
#include "Luau/BuiltinDefinitions.h"
#include "Luau/Frontend.h"
#include "Luau/TypeAttach.h"
#include "Luau/Transpiler.h"
#include <filesystem>
#include <vector>

#include "FileUtils.h"
#include "RequireResolver.h"

LUAU_FASTFLAG(DebugLuauTimeTracing)

LUAU_FASTINT(LuauTypeInferRecursionLimit)
LUAU_FASTINT(LuauTypeInferTypePackLoopLimit)
LUAU_FASTINT(LuauCheckRecursionLimit)
LUAU_FASTINT(LuauTableTypeMaximumStringifierLength)
LUAU_FASTINT(LuauTypeInferIterationLimit)
LUAU_FASTINT(LuauTarjanChildLimit)
LUAU_FASTFLAG(DebugLuauFreezeArena)


enum class ReportFormat
{
    Default,
    Luacheck,
    Gnu,
};

static void report(ReportFormat format, const char* name, const Luau::Location& loc, const char* type, const char* message)
{
    switch (format)
    {
    case ReportFormat::Default:
        fprintf(stderr, "%s(%d,%d): %s: %s\n", name, loc.begin.line + 1, loc.begin.column + 1, type, message);
        break;

    case ReportFormat::Luacheck:
    {
        // Note: luacheck's end column is inclusive but our end column is exclusive
        // In addition, luacheck doesn't support multi-line messages, so if the error is multiline we'll fake end column as 100 and hope for the best
        int columnEnd = (loc.begin.line == loc.end.line) ? loc.end.column : 100;

        // Use stdout to match luacheck behavior
        fprintf(stdout, "%s:%d:%d-%d: (W0) %s: %s\n", name, loc.begin.line + 1, loc.begin.column + 1, columnEnd, type, message);
        break;
    }

    case ReportFormat::Gnu:
        // Note: GNU end column is inclusive but our end column is exclusive
        fprintf(stderr, "%s:%d.%d-%d.%d: %s: %s\n", name, loc.begin.line + 1, loc.begin.column + 1, loc.end.line + 1, loc.end.column, type, message);
        break;
    }
}

static void reportError(const Luau::Frontend& frontend, ReportFormat format, const Luau::TypeError& error)
{
    std::string humanReadableName = frontend.fileResolver->getHumanReadableModuleName(error.moduleName);

    if (const Luau::SyntaxError* syntaxError = Luau::get_if<Luau::SyntaxError>(&error.data))
        report(format, humanReadableName.c_str(), error.location, "SyntaxError", syntaxError->message.c_str());
    else
        report(format, humanReadableName.c_str(), error.location, "TypeError", Luau::toString(error).c_str());
}

static void reportWarning(ReportFormat format, const char* name, const Luau::LintWarning& warning)
{
    report(format, name, warning.location, Luau::LintWarning::getName(warning.code), warning.text.c_str());
}

static bool analyzeFile(Luau::Frontend& frontend, const char* name, ReportFormat format, bool annotate)
{
    Luau::CheckResult cr;

    if (frontend.isDirty(name))
        cr = frontend.check(name);

    if (!frontend.getSourceModule(name))
    {
        fprintf(stderr, "Error opening %s\n", name);
        return false;
    }

    for (auto& error : cr.errors)
        reportError(frontend, format, error);

    Luau::LintResult lr = frontend.lint(name);

    std::string humanReadableName = frontend.fileResolver->getHumanReadableModuleName(name);
    for (auto& error : lr.errors)
        reportWarning(format, humanReadableName.c_str(), error);
    for (auto& warning : lr.warnings)
        reportWarning(format, humanReadableName.c_str(), warning);

    if (annotate)
    {
        Luau::SourceModule* sm = frontend.getSourceModule(name);
        Luau::ModulePtr m = frontend.moduleResolver.getModule(name);

        Luau::attachTypeData(*sm, *m);

        std::string annotated = Luau::transpileWithTypes(*sm->root);

        printf("%s", annotated.c_str());
    }

    return cr.errors.empty() && lr.errors.empty();
}

static void displayHelp(const char* argv0)
{
    printf("Usage: %s [--mode] [options] [file list]\n", argv0);
    printf("\n");
    printf("Available modes:\n");
    printf("  omitted: typecheck and lint input files\n");
    printf("  --annotate: typecheck input files and output source with type annotations\n");
    printf("\n");
    printf("Available options:\n");
    printf("  --formatter=plain: report analysis errors in Luacheck-compatible format\n");
    printf("  --formatter=gnu: report analysis errors in GNU-compatible format\n");
    printf("  --timetrace: record compiler time tracing information into trace.json\n");
    printf("  --project=PATH: path to Rojo .project.json for resolving\n");
    printf("  --defs=PATH: path to definition file for global types\n");
    printf("  --stdin-filepath=PATH: path to file being sent through stdin. Used for require resolution\n");
    printf("  --dump-source-map: dump the currently resolved source map\n");
    printf("  --exclude-virtual-path: don't include virtual path name in output\n");
    printf("\n");
    printf("Available limit flags:\n");
    printf("  These options affect internal limits of the Luau typechecker.\n");
    printf("  Changing these may permit the typechecker to work on complex code at the cost of performance.\n");
    printf("  --flag:LuauTypeInferRecursionLimit=INT:            default %d\n", FInt::LuauTypeInferRecursionLimit.value);
    printf("  --flag:LuauTypeInferIterationLimit=INT:            default %d\n", FInt::LuauTypeInferIterationLimit.value);
    printf("  --flag:LuauTypeInferTypePackLoopLimit=INT:         default %d\n", FInt::LuauTypeInferTypePackLoopLimit.value);
    printf("  --flag:LuauCheckRecursionLimit=INT:                default %d\n", FInt::LuauCheckRecursionLimit.value);
    printf("  --flag:LuauTarjanChildLimit=INT:                   default %d\n", FInt::LuauTarjanChildLimit.value);
    printf("  --flag:LuauTableTypeMaximumStringifierLength=INT:  default %d\n", FInt::LuauTableTypeMaximumStringifierLength.value);
}

static int assertionHandler(const char* expr, const char* file, int line, const char* function)
{
    printf("%s(%d): ASSERTION FAILED: %s\n", file, line, expr);
    return 1;
}

bool isManagedModule(const Luau::ModuleName& name)
{
    return Luau::startsWith(name, "game/") || Luau::startsWith(name, "ProjectRoot/");
}

std::optional<std::string> getCurrentModuleVirtualPath(
    const Luau::ModuleName& name, ResolvedSourceMap sourceMap, std::optional<std::filesystem::path> stdinFilepath)
{
    if (isManagedModule(name))
    {
        return name;
    }
    else
    {
        // name is a file path which we need to translate to a Rojo path
        std::filesystem::path filePath = name;
        if (name == "-")
        {
            if (stdinFilepath)
            {
                filePath = stdinFilepath.value();
            }
            else
            {
                return std::nullopt;
            }
        }
        auto virtualPath = RojoResolver::resolveRealPathToVirtual(sourceMap, filePath);
        if (virtualPath)
            return virtualPath.value();
    }

    return std::nullopt;
}

struct CliFileResolver : Luau::FileResolver
{
    ResolvedSourceMap sourceMap;
    std::optional<std::filesystem::path> stdinFilepath;
    bool excludeVirtualPath = false;

    std::optional<Luau::SourceCode> readSource(const Luau::ModuleName& name) override
    {
        Luau::SourceCode::Type sourceType;
        std::optional<std::string> source = std::nullopt;

        // If the module name is "-", then read source from stdin
        if (name == "-")
        {
            source = readStdin();
            if (stdinFilepath)
            {
                sourceType = RojoResolver::sourceCodeTypeFromPath(*stdinFilepath);
            }
            else
            {
                sourceType = Luau::SourceCode::Script;
            }
        }
        else if (isManagedModule(name))
        {
            std::optional<std::filesystem::path> realFilePath = RojoResolver::resolveRequireToRealPath(name, sourceMap.root);
            if (realFilePath.has_value())
            {
                source = readFile(realFilePath.value());
                sourceType = RojoResolver::sourceCodeTypeFromPath(realFilePath.value());
            }
        }
        else
        {
            source = readFile(name);
            sourceType = RojoResolver::sourceCodeTypeFromPath(name);
        }

        if (!source)
            return std::nullopt;

        return Luau::SourceCode{*source, sourceType};
    }

    std::optional<Luau::ModuleInfo> resolveModule(const Luau::ModuleInfo* context, Luau::AstExpr* node) override
    {
        if (Luau::AstExprGlobal* g = node->as<Luau::AstExprGlobal>())
        {
            if (g->name == "game")
                return Luau::ModuleInfo{"game"};

            if (g->name == "script")
            {
                if (auto virtualPath = getCurrentModuleVirtualPath(context->name, sourceMap, stdinFilepath))
                {
                    return Luau::ModuleInfo{virtualPath.value()};
                }
            }
        }
        else if (Luau::AstExprIndexName* i = node->as<Luau::AstExprIndexName>())
        {
            if (context)
            {
                if (strcmp(i->index.value, "Parent") == 0)
                {
                    // Pop the name instead
                    // HACK: we use getParentPath which is meant to be for real files... but it works so
                    auto parentPath = getParentPath(context->name);
                    if (parentPath.has_value())
                        return Luau::ModuleInfo{parentPath.value(), context->optional};
                }

                return Luau::ModuleInfo{context->name + '/' + i->index.value, context->optional};
            }
        }
        else if (Luau::AstExprIndexExpr* i = node->as<Luau::AstExprIndexExpr>())
        {
            if (Luau::AstExprConstantString* index = i->index->as<Luau::AstExprConstantString>())
            {
                if (context)
                    return Luau::ModuleInfo{context->name + '/' + std::string(index->value.data, index->value.size), context->optional};
            }
        }
        else if (Luau::AstExprCall* call = node->as<Luau::AstExprCall>(); call && call->self && call->args.size >= 1 && context)
        {
            if (Luau::AstExprConstantString* index = call->args.data[0]->as<Luau::AstExprConstantString>())
            {
                Luau::AstName func = call->func->as<Luau::AstExprIndexName>()->index;

                if (func == "GetService" && context->name == "game")
                    return Luau::ModuleInfo{"game/" + std::string(index->value.data, index->value.size)};
                if (func == "WaitForChild" || func == "FindFirstChild")
                    if (context)
                        return Luau::ModuleInfo{context->name + '/' + std::string(index->value.data, index->value.size), context->optional};
            }
        }

        return std::nullopt;
    }

    std::string getHumanReadableModuleName(const Luau::ModuleName& name) const override
    {
        if (name == "-")
            return "stdin";

        if (isManagedModule(name))
        {
            std::optional<std::filesystem::path> realFilePath = RojoResolver::resolveRequireToRealPath(name, sourceMap.root);
            if (realFilePath.has_value())
            {
                if (excludeVirtualPath)
                {

                    return realFilePath.value().relative_path().generic_string();
                }
                return realFilePath.value().relative_path().generic_string() + "[" + name + "]";
            }
            return name;
        }
        else
        {
            return name;
        }
    }
};

struct CliConfigResolver : Luau::ConfigResolver
{
    Luau::Config defaultConfig;

    mutable std::unordered_map<std::string, Luau::Config> configCache;
    mutable std::vector<std::pair<std::string, std::string>> configErrors;

    CliConfigResolver()
    {
        defaultConfig.mode = Luau::Mode::Nonstrict;
    }

    const Luau::Config& getConfig(const Luau::ModuleName& name) const override
    {
        std::optional<std::string> path = getParentPath(name);
        if (!path)
            return defaultConfig;

        return readConfigRec(*path);
    }

    const Luau::Config& readConfigRec(const std::string& path) const
    {
        auto it = configCache.find(path);
        if (it != configCache.end())
            return it->second;

        std::optional<std::string> parent = getParentPath(path);
        Luau::Config result = parent ? readConfigRec(*parent) : defaultConfig;

        std::string configPath = joinPaths(path, Luau::kConfigName);

        if (std::optional<std::string> contents = readFile(configPath))
        {
            std::optional<std::string> error = Luau::parseConfig(*contents, result);
            if (error)
                configErrors.push_back({configPath, *error});
        }

        return configCache[path] = result;
    }
};

std::optional<Luau::TypeId> makeInstanceType(Luau::TypeArena& typeArena, const Luau::ScopePtr& globalScope, SourceNode& node)
{
    std::optional<Luau::TypeFun> baseType;
    if (node.className.has_value())
    {
        baseType = globalScope->lookupType(node.className.value());
    }
    if (!baseType.has_value())
    {
        baseType = globalScope->lookupType("Instance");
    }
    // If we reach this stage, we couldn't find the class name nor the "Instance" type
    // This most likely means a valid definitions file was not provided
    if (!baseType.has_value())
    {
        return std::nullopt;
    }

    auto typeId = baseType.value().type;

    if (node.children.size() > 0)
    {
        // Add the children
        Luau::TableTypeVar children{Luau::TableState::Sealed, globalScope->level};
        for (const auto& child : node.children)
        {
            auto childType = makeInstanceType(typeArena, globalScope, *child.second);
            if (childType.has_value())
            {
                auto childProperty = Luau::makeProperty(childType.value(), "@luau/instance");
                children.props[child.first] = childProperty;
            }
        }
        Luau::TypeId childId = typeArena.addType(children);
        typeId = Luau::makeIntersection(typeArena, {typeId, childId});
    }
    return typeId;
}

int main(int argc, char** argv)
{
    Luau::assertHandler() = assertionHandler;

    for (Luau::FValue<bool>* flag = Luau::FValue<bool>::list; flag; flag = flag->next)
        if (strncmp(flag->name, "Luau", 4) == 0)
            flag->value = true;

    if (argc >= 2 && strcmp(argv[1], "--help") == 0)
    {
        displayHelp(argv[0]);
        return 0;
    }

    ReportFormat format = ReportFormat::Default;
    bool annotate = false;
    bool dumpMap = false;
    bool excludeVirtualPath = false;
    std::optional<std::filesystem::path> projectPath = std::nullopt;
    std::vector<std::filesystem::path> globalDefsPaths;
    std::optional<std::filesystem::path> stdinFilepath = std::nullopt;

    for (int i = 1; i < argc; ++i)
    {
        if (argv[i][0] != '-')
            continue;

        if (strcmp(argv[i], "--formatter=plain") == 0)
            format = ReportFormat::Luacheck;
        else if (strcmp(argv[i], "--formatter=gnu") == 0)
            format = ReportFormat::Gnu;
        else if (strcmp(argv[i], "--annotate") == 0)
            annotate = true;
        else if (strcmp(argv[i], "--timetrace") == 0)
            FFlag::DebugLuauTimeTracing.value = true;
        else if (strcmp(argv[i], "--dump-source-map") == 0)
            dumpMap = true;
        else if (strcmp(argv[i], "--exclude-virtual-path") == 0)
            excludeVirtualPath = true;
        else if (strncmp(argv[i], "--project=", 10) == 0)
            projectPath = std::string(argv[i] + 10);
        else if (strncmp(argv[i], "--defs=", 7) == 0)
            globalDefsPaths.push_back(std::string(argv[i] + 7));
        else if (strncmp(argv[i], "--stdin-filepath=", 17) == 0)
            stdinFilepath = std::string(argv[i] + 17);

        else if (strncmp(argv[i], "--flag:LuauTypeInferRecursionLimit=", 31) == 0)
            FInt::LuauTypeInferRecursionLimit.value = std::stoi(std::string(argv[i] + 31));
        else if (strncmp(argv[i], "--flag:LuauTypeInferIterationLimit=", 35) == 0)
            FInt::LuauTypeInferIterationLimit.value =  std::stoi(std::string(argv[i] + 35));
        else if (strncmp(argv[i], "--flag:LuauTypeInferTypePackLoopLimit=", 38) == 0)
            FInt::LuauTypeInferTypePackLoopLimit.value =  std::stoi(std::string(argv[i] + 38));
        else if (strncmp(argv[i], "--flag:LuauCheckRecursionLimit=", 31) == 0)
            FInt::LuauCheckRecursionLimit.value =  std::stoi(std::string(argv[i] + 31));
        else if (strncmp(argv[i], "--flag:LuauTarjanChildLimit=", 28) == 0)
            FInt::LuauTarjanChildLimit.value = std::stoi(std::string(argv[i] + 28));
        else if (strncmp(argv[i], "--flag:LuauTableTypeMaximumStringifierLength=", 45) == 0)
            FInt::LuauTableTypeMaximumStringifierLength.value = std::stoi(std::string(argv[i] + 45));
    }

#if !defined(LUAU_ENABLE_TIME_TRACE)
    if (FFlag::DebugLuauTimeTracing)
    {
        printf("To run with --timetrace, Luau has to be built with LUAU_ENABLE_TIME_TRACE enabled\n");
        return 1;
    }
#endif

    Luau::FrontendOptions frontendOptions;
    frontendOptions.retainFullTypeGraphs = annotate;

    CliFileResolver fileResolver;
    fileResolver.excludeVirtualPath = excludeVirtualPath;
    fileResolver.stdinFilepath = stdinFilepath;
    if (projectPath)
    {
        auto sourceMap = RojoResolver::parseSourceMap(projectPath.value());
        if (sourceMap)
        {
            fileResolver.sourceMap = sourceMap.value();
            if (dumpMap)
                dumpSourceMap(fileResolver.sourceMap.root, 0);
        }
    }

    CliConfigResolver configResolver;
    Luau::Frontend frontend(&fileResolver, &configResolver, frontendOptions);
    Luau::registerBuiltinTypes(frontend.typeChecker);

    // If global definitions have been provided, then also register them
    if (!globalDefsPaths.empty())
    {
        bool success = true;

        for (auto path : globalDefsPaths)
        {
            std::optional<std::string> defs = readFile(path);

            if (defs.has_value())
            {
                auto loadResult = Luau::loadDefinitionFile(frontend.typeChecker, frontend.typeChecker.globalScope, defs.value(), "@luau");
                if (!loadResult.success)
                {
                    success = false;
                    fprintf(stderr, "Failed to load definitions\n");
                    for (const auto& error : loadResult.parseResult.errors)
                        report(format, path.relative_path().generic_string().c_str(), error.getLocation(), "SyntaxError", error.getMessage().c_str());
                    for (const auto& error : loadResult.module->errors)
                        if (const Luau::SyntaxError* syntaxError = Luau::get_if<Luau::SyntaxError>(&error.data))
                            report(
                                format, path.relative_path().generic_string().c_str(), error.location, "SyntaxError", syntaxError->message.c_str());
                        else
                            report(format, path.relative_path().generic_string().c_str(), error.location, "TypeError", Luau::toString(error).c_str());
                }
            }
            else
            {
                success = false;
            }
        }

        // Apply type overrides
        if (success)
        {
            // Try to extend the globally registered types with the project format
            auto root = fileResolver.sourceMap.root;
            if (root.className.has_value() && root.className.value() == "DataModel")
            {
                for (const auto& services : root.children)
                {
                    auto serviceType = frontend.typeChecker.globalScope->lookupType(services.first);
                    if (serviceType.has_value())
                    {
                        if (Luau::ClassTypeVar* ctv = Luau::getMutable<Luau::ClassTypeVar>(serviceType.value().type))
                        {
                            // Extend the props to include the children
                            for (const auto& child : (*services.second).children)
                            {
                                auto childType =
                                    makeInstanceType(frontend.typeChecker.globalTypes, frontend.typeChecker.globalScope, *(child.second));
                                if (childType.has_value())
                                {

                                    ctv->props[child.first] = makeProperty(childType.value(), "@luau/serviceChild");
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    auto moduleResolver = frontend.moduleResolver;

    frontend.typeChecker.prepareModuleScope = [&moduleResolver, fileResolver, stdinFilepath](
                                                  const Luau::ModuleName& name, const Luau::ScopePtr& scope)
    {
        auto virtualPath = getCurrentModuleVirtualPath(name, fileResolver.sourceMap, stdinFilepath);
        if (!virtualPath.has_value())
            return;

        auto node = RojoResolver::resolveRequireToSourceNode(virtualPath.value(), fileResolver.sourceMap.root);
        if (!node.has_value())
            return;

        // HACK: we need a way to get the typeArena for the module, but I don't know how
        // we can see that moduleScope->returnType is assigned before prepareModuleScope is called in TypeInfer, so we could try it this way...
        LUAU_ASSERT(scope->returnType);
        auto typeArena = scope->returnType->owningArena;
        LUAU_ASSERT(typeArena);
        auto ty = makeInstanceType(*typeArena, scope, node.value());
        if (!ty.has_value())
            return;

        scope->bindings[Luau::AstName("script")] = Luau::Binding{ty.value(), Luau::Location{}, {}, {}, std::nullopt};
    };

    Luau::freeze(frontend.typeChecker.globalTypes);

    std::vector<std::filesystem::path> files = getSourceFiles(argc, argv);

    int failed = 0;

    for (const std::filesystem::path& path : files)
        failed += !analyzeFile(frontend, path.relative_path().generic_string().c_str(), format, annotate);

    if (!configResolver.configErrors.empty())
    {
        failed += int(configResolver.configErrors.size());

        for (const auto& pair : configResolver.configErrors)
            fprintf(stderr, "%s: %s\n", pair.first.c_str(), pair.second.c_str());
    }

    if (format == ReportFormat::Luacheck)
        return 0;
    else
        return failed ? 1 : 0;
}