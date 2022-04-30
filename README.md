# luau-analyze with Rojo support

A fork of [Luau's](https://github.com/Roblox/luau) `luau-analyze` tool, with Rojo support

This tool adds in support for Rojo requires, using a `project.json` file as a source map.
It also adds in support to registering global types from an API dump.

## Installation

- [GitHub Releases](https://github.com/JohnnyMorganz/luau-analyze-rojo/releases)
- [Foreman](https://github.com/Roblox/foreman)

```toml
[tools]
luau-analyze = { source = "JohnnyMorganz/luau-analyze-rojo", version = "*" }
```

- From Source

```sh
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . --target luau-analyze-rojo --config Release
```

## Usage

```sh
luau-analyze --project=default.project.json --defs=globalTypes.d.lua fileToAnalyse.luau
```

The tool supports all options available in the original `luau-analyze` tool, with these further additions:

- `--project=PATH`: path to the Rojo project file which will be used to resolve the source map
- `--defs=PATH`: path to a definition file containing all global types to load into the type checker.
- `--stdin-filepath=PATH`: the path representation of the code parsed in to stdin. Used to resolve requires

Further options:

- `--dump-source-map`: dumps a map of registered files that the tool has picked up. Useful for debugging
- `--exclude-virtual-path`: don't include the virtual path in the output. Useful when a machine needs to read the output

Note that `--defs` supports being listed multiple times, to handle multiple different definition files:

```sh
luau-analyze --defs=globalTypes.d.lua --defs=extraTypes.d.lua fileToAnalyse.luau
```

Limit flags:

Internal Luau flags can be modified and set using `--flag:NAME=value`.
Changing flags may permit the typechecker to work on complex code at the cost of performance.
We don't have good documentation on how these flags affect behaviour.

All available flags and their defaults can be listed using `luau-analyze-rojo --show-flags`

## Registering global types

You can create a definition file to register as global types.

**NOTE: definition file syntax is currently unstable and is undocumented, it can change at any time**

The project comes with a tool to automate pulling in the latest API dump and converting it into types

```sh
python dumpRobloxTypes.py > globalTypes.d.lua
```

## Supported Features:

- Full place project file resolution, including nested model project files
- Root model project file resolution
- Fully qualified requires (e.g. `game.ReplicatedStorage.Module`) when using a place project file
- Relative requires (e.g. `script.Child` or `script.Parent.Module`) in either project file mode
- Supported indexing types: `game:GetService("Service")` / `instance.Name` / `instance["Name"]` / `instance:FindFirstChild("Name")` / `instance:WaitForChild("Name")`
- Full type definitions through API dumps
- Proper resolution of `Instance.new("Class")` and `game:GetService("Service")` to their associated types

**Note: in non-strict mode, some unknown requires are silently ignored. If it seems a require hasn't resolved correctly, use strict mode (`--!strict`) to warn about unknown requires (i.e., ones which were not able to resolve to a virtual path)**

If a require does not correctly resolve, please file a bug report.
