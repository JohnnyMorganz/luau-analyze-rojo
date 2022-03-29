# luau-analyze with Rojo support

A fork of [Luau's](https://github.com/Roblox/luau) `luau-analyze` tool, with Rojo support

This tool adds in support for Rojo requires, using a `project.json` file as a source map.
It also adds in support to registering global types from an API dump.

## Usage

```
luau-analyze --project=default.project.json --defs=globalTypes.d.lua fileToAnalyse.luau
```

- `--project=PATH` is a path to the Rojo project file
- `--defs=PATH` is a path to a definition file containing all global types to load into the type checker.

Further options:

- `--dump-source-map`: dumps a map of registered files that the tool has picked up. Useful for debugging

## Registering global types

You can create a definition file to register as global types.

**NOTE: definition file syntax is currently unstable and is undocumented, it can change at any time**

The project comes with a tool to automate pulling in the latest API dump and converting it into types

```
python dumpRobloxTypes.py > globalTypes.d.lua
```
