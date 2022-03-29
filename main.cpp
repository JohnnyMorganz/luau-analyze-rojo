// This file is part of the Luau programming language and is licensed under MIT License; see LICENSE.txt for details
#include "Luau/ModuleResolver.h"
#include "Luau/TypeInfer.h"
#include "Luau/BuiltinDefinitions.h"
#include "Luau/Frontend.h"
#include "Luau/TypeAttach.h"
#include "Luau/Transpiler.h"

#include "FileUtils.h"
#include "RequireResolver.h"

LUAU_FASTFLAG(DebugLuauTimeTracing)

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
}

static int assertionHandler(const char* expr, const char* file, int line, const char* function)
{
    printf("%s(%d): ASSERTION FAILED: %s\n", file, line, expr);
    return 1;
}

struct CliFileResolver : Luau::FileResolver
{
    RojoResolver* rojoResolver;

    std::optional<Luau::SourceCode> readSource(const Luau::ModuleName& name) override
    {
        Luau::SourceCode::Type sourceType;
        std::optional<std::string> source = std::nullopt;

        // If the module name is "-", then read source from stdin
        if (name == "-")
        {
            source = readStdin();
            sourceType = Luau::SourceCode::Script;
        }
        else if (name.rfind("game/", 0) == 0)
        {
            if (rojoResolver)
            {
                std::optional<std::string> realFilePath = (*rojoResolver).resolveRequireToRealPath(name);
                if (realFilePath)
                {

                    source = readFile(*realFilePath);
                    sourceType = (*rojoResolver).sourceCodeTypeFromPath(*realFilePath);
                }
            }
        }
        else
        {
            source = readFile(name);
            sourceType = Luau::SourceCode::Module;
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
        }
        else if (Luau::AstExprIndexName* i = node->as<Luau::AstExprIndexName>())
        {
            if (context)
                return Luau::ModuleInfo{context->name + '/' + i->index.value, context->optional};
        }
        else if (Luau::AstExprCall* call = node->as<Luau::AstExprCall>(); call && call->self && call->args.size >= 1 && context)
        {
            if (Luau::AstExprConstantString* index = call->args.data[0]->as<Luau::AstExprConstantString>())
            {
                Luau::AstName func = call->func->as<Luau::AstExprIndexName>()->index;

                if (func == "GetService" && context->name == "game")
                    return Luau::ModuleInfo{"game/" + std::string(index->value.data, index->value.size)};
            }
        }

        return std::nullopt;
    }

    std::string getHumanReadableModuleName(const Luau::ModuleName& name) const override
    {
        if (name == "-")
            return "stdin";

        if (name.rfind("game/", 0) == 0)
        {
            if (rojoResolver)
            {
                std::optional<std::string> realFilePath = (*rojoResolver).resolveRequireToRealPath(name);
                if (realFilePath)
                    return name + " (" + *realFilePath + ")";
                else
                    return name + " (failed to resolve Rojo file path)";
            }
            else
            {
                return name + " (no Rojo resolver available)";
            }
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
    std::optional<std::string> projectPath = std::nullopt;
    std::optional<std::string> globalDefsPath = std::nullopt;

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
        else if (strncmp(argv[i], "--project=", 10) == 0)
            projectPath = std::string(argv[i] + 10);
        else if (strncmp(argv[i], "--defs=", 7) == 0)
            globalDefsPath = std::string(argv[i] + 7);
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
    RojoResolver requireResolver;
    fileResolver.rojoResolver = &requireResolver;
    if (projectPath)
    {
        requireResolver.parseSourceMap(*projectPath);
    }

    CliConfigResolver configResolver;
    Luau::Frontend frontend(&fileResolver, &configResolver, frontendOptions);

    Luau::registerBuiltinTypes(frontend.typeChecker);

    // If global definitions have been provided, then also register them
    if (globalDefsPath)
    {
        std::optional<std::string> defs = readFile(*globalDefsPath);
        if (defs)
        {
            auto loadResult = Luau::loadDefinitionFile(frontend.typeChecker, frontend.typeChecker.globalScope, *defs, "@luau");
            if (!loadResult.success)
            {
                fprintf(stderr, "Failed to load definitions\n");
                for (const auto& error : loadResult.parseResult.errors)
                    report(format, (*globalDefsPath).c_str(), error.getLocation(), "SyntaxError", error.getMessage().c_str());
                for (const auto& error : loadResult.module->errors)
                    if (const Luau::SyntaxError* syntaxError = Luau::get_if<Luau::SyntaxError>(&error.data))
                        report(format, (*globalDefsPath).c_str(), error.location, "SyntaxError", syntaxError->message.c_str());
                    else
                        report(format, (*globalDefsPath).c_str(), error.location, "TypeError", Luau::toString(error).c_str());
            }
        }
    }

    Luau::freeze(frontend.typeChecker.globalTypes);

    std::vector<std::string> files = getSourceFiles(argc, argv);

    int failed = 0;

    for (const std::string& path : files)
        failed += !analyzeFile(frontend, path.c_str(), format, annotate);

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