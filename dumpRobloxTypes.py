# Script to pull in API Dump and export it into a definition file
# Based off https://gist.github.com/HawDevelopment/97f2411149e24d8e7a712016114d55ff
from typing import Any, Dict
from collections import defaultdict
import requests
import json

DATA_TYPES_URL = "https://raw.githubusercontent.com/NightrainsRbx/RobloxLsp/master/server/api/DataTypes.json"
API_DUMP_URL = "https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/API-Dump.json"
TYPE_INDEX = {
    'Tuple': "any", 'Variant': "any",
    'Function': "(any) -> (any)", "function": "(any) -> (any)",
    'bool': "boolean",
    'int': "number", 'int64': "number", 'double': "number", 'float': "number",
    'void': "nil",
    'Objects': "{ Instance }",
    'Dictionary': "{ [any]: any }", 'Map': "{ [any]: any }",
    'Array': "{ any }", 'table': "{ any }",
    'CoordinateFrame': 'CFrame',
    'RBXScriptSignal': "RBXScriptSignal",
}

METAMETHODS = {
    "Vector3": [
        'function __add(self, other: Vector3): Vector3',
        'function __sub(self, other: Vector3): Vector3',
        'function __mul(self, other: Vector3 | number): Vector3',
        'function __div(self, other: Vector3 | number): Vector3',
        'function __unm(self): Vector3',
    ],
    "Vector2": [
        'function __add(self, other: Vector2): Vector2',
        'function __sub(self, other: Vector2): Vector2',
        'function __mul(self, other: Vector2 | number): Vector2',
        'function __div(self, other: Vector2 | number): Vector2',
        'function __unm(self): Vector2',
    ],
    "Vector3int16": [
        'function __add(self, other: Vector3int16): Vector3int16',
        'function __sub(self, other: Vector3int16): Vector3int16',
        'function __mul(self, other: Vector3int16 | number): Vector3int16',
        'function __div(self, other: Vector3int16 | number): Vector3int16',
        'function __unm(self): Vector3int16',
    ],
    "Vector2int16": [
        'function __add(self, other: Vector2int16): Vector2int16',
        'function __sub(self, other: Vector2int16): Vector2int16',
        'function __mul(self, other: Vector2int16 | number): Vector2int16',
        'function __div(self, other: Vector2int16 | number): Vector2int16',
        'function __unm(self): Vector2int16',
    ],
    "UDim2": [
        'function __add(self, other: UDim2): UDim2',
        'function __sub(self, other: UDim2): UDim2',
        'function __unm(self): UDim2',
    ],
    "UDim": [
        'function __add(self, other: UDim): UDim',
        'function __sub(self, other: UDim): UDim',
        'function __unm(self): UDim',
    ],
    "CFrame": [
        'function __add(self, other: Vector3): CFrame',
        'function __sub(self, other: Vector3): CFrame',
        'function __mul(self, other: CFrame): CFrame',
        'function __mul(self, other: Vector3): Vector3',
    ],
}

START_BASE = """
type Content = string
type ProtectedString = string
type BinaryString = string
type QDir = string
type QFont = string
type Function = (any) -> any
type FloatCurveKey = any
type RotationCurveKey = any
type CoordinateFrame = CFrame
type Font = any

declare class Enum
	function GetEnumItems(self): { any }
end

declare class EnumItem
	Name: string
	Value: number
	EnumType: Enum
end

declare debug: {
    info: (<R...>(thread, number, string) -> R...) & (<R...>(number, string) -> R...) & (<A..., R1..., R2...>((A...) -> R1..., string) -> R2...),
    traceback: ((string?, number?) -> string) & ((thread, string?, number?) -> string),
    profilebegin: (label: string) -> (),
    profileend: () -> (),
    setmemorycategory: (tag: string) -> (),
    resetmemorycategory: () -> (),
}

declare task: {
    defer: <A..., R...>(f: thread | ((A...) -> R...), A...) -> (),
    spawn: <A..., R...>(f: thread | ((A...) -> R...), A...) -> (),
    delay: <A..., R...>(sec: number?, f: thread | ((A...) -> R...), A...) -> (),
    wait: (sec: number?) -> number,
    synchronize: () -> (),
    desynchronize: () -> (),
}

declare shared: any

declare function collectgarbage(mode: "count"): number
declare function warn<T...>(...: T...)
declare function tick(): number
declare function time(): number
declare function elapsedTime(): number
declare function wait(seconds: number?): (number, number)
declare function delay<T...>(delayTime: number?, callback: (T...) -> ())
declare function spawn<T...>(callback: (T...) -> ())
declare function version(): string
declare function printidentity(prefix: string?)
"""

END_BASE = """
declare game: DataModel
declare workspace: Workspace
declare plugin: Plugin
declare script: LuaSourceContainer
declare function settings(): GlobalSettings
declare function UserSettings(): UserSettings
"""

def escapeName(name: str):
    if name == "function":
        return "func"
    return name.replace(' ', '_').replace('-', '').replace('"', '').replace('(', '').replace(')', '').replace('/', '_')

def resolveType(type):
    name, category = type['Name'], type['Category'] if 'Category' in type else 'Primitive'
    
    if name[-1] == '?':
        return resolveType({ 'Name': name[:-1], 'Category': category }) + "?"
    
    if category == "Enum":
        return "Enum" + name
    elif category == "DataType":
        return name
    else:
        return TYPE_INDEX[name] if name in TYPE_INDEX else name

def resolveParameter(param):
    return f"{escapeName(param['Name'])}: {resolveType(param['Type'])}{'?' if 'Default' in param else ''}"

def resolveParameterList(params):
    return ', '.join(map(resolveParameter, params))

def resolveReturnType(member):
    return resolveType(member['ReturnType']) if 'ReturnType' in member else '(' + ', '.join(map(resolveType, member['TupleReturns'])) + ')'

def declareClass(klass: Dict[str, Any]):
    out = "declare class " + klass['Name']
    if 'Superclass' in klass and klass['Superclass'] != '<<<ROOT>>>':
        out += " extends " + klass['Superclass']
    out += "\n"

    for member in klass['Members']:
        if member['MemberType'] == "Property":
            out += f"\t{escapeName(member['Name'])}: {resolveType(member['ValueType'])}\n"
        elif member['MemberType'] == "Function":
            out += f"\tfunction {escapeName(member['Name'])}(self{', ' if len(member['Parameters']) > 0 else ''}{resolveParameterList(member['Parameters'])}): {resolveReturnType(member)}\n"
        elif member['MemberType'] == "Event":
            out += f"\t{escapeName(member['Name'])}: RBXScriptSignal\n" # TODO: type this
        elif member['MemberType'] == "Callback":
            out += f"\t{escapeName(member['Name'])}: ({resolveParameterList(member['Parameters'])}) -> {resolveReturnType(member)}\n"

    out += "end"

    return out

def printEnums(dump):
    enums = defaultdict(list)
    for enum in dump['Enums']:
        for item in enum['Items']:
            enums[enum['Name']].append(item['Name'])
        
    # Declare each enum individually
    out = ""
    for enum, items in enums.items():
        out += "type Enum" + enum + " = {\n"
        for item in items:
            out += f"\t{item}: EnumItem,\n"
        out += "}\n"
    print(out)
    print()

    # Declare enums as a whole
    out = "declare Enum: {\n"
    for enum in enums:
        out += f"\t{enum}: Enum{enum},\n"
    out += "}"
    print(out)
    print()

def printClasses(dump):
    # Forward declare all the types
    for klass in dump['Classes']:
        print(f"type {klass['Name']} = any")
    
    print("type Objects = { Instance }")

    for klass in dump['Classes']:
        print(declareClass(klass))
        print()
    
def printDataTypes(types):
    # Forward declare all the types
    for klass in types['DataTypes']:
        print(f"type {klass['Name']} = any")

    for klass in types['DataTypes']:
        name = klass['Name']
        members = klass['Members']

        out = "declare class " + name + "\n"
        for member in members:
            if member['MemberType'] == "Property":
                out += f"\t{escapeName(member['Name'])}: {resolveType(member['ValueType'])}\n"
            elif member['MemberType'] == "Function":
                out += f"\tfunction {escapeName(member['Name'])}(self{', ' if len(member['Parameters']) > 0 else ''}{resolveParameterList(member['Parameters'])}): {resolveReturnType(member)}\n"
            elif member['MemberType'] == "Event":
                out += f"\t{escapeName(member['Name'])}: RBXScriptSignal\n" # TODO: type this
            elif member['MemberType'] == "Callback":
                out += f"\t{escapeName(member['Name'])}: ({resolveParameterList(member['Parameters'])}) -> {resolveReturnType(member)}\n"         

        if name in METAMETHODS:
            for method in METAMETHODS[name]:
                out += f"\t{method}\n"

        out += "end"
        print(out)
        print()

def printDataTypeConstructors(types):
    for klass in types['Constructors']:
        name = klass['Name']
        members = klass['Members']

        # Handle overloadable functions
        functions = defaultdict(list)
        for member in members:
            if member['MemberType'] == 'Function':
                functions[member['Name']].append(member)

        out = "declare " + name + ": {\n"
        for member in members:
            if member['MemberType'] == "Property":
                out += f"\t{escapeName(member['Name'])}: {resolveType(member['ValueType'])},\n"
            elif member['MemberType'] == "Function":
                pass
            elif member['MemberType'] == "Event":
                out += f"\t{escapeName(member['Name'])}: RBXScriptSignal,\n" # TODO: type this

        for function, overloads in functions.items():
            overloads = map(lambda member: f"(({resolveParameterList(member['Parameters'])}) -> {resolveReturnType(member)})", overloads)
            out += f"\t{escapeName(function)}: {' & '.join(overloads)},\n"              

        out += "}"
        print(out)
        print()

# Print global types
dataTypes = json.loads(requests.get(DATA_TYPES_URL).text)
dump = json.loads(requests.get(API_DUMP_URL).text)

print(START_BASE)
printEnums(dump)
printDataTypes(dataTypes)
printDataTypeConstructors(dataTypes)
printClasses(dump)
print(END_BASE)