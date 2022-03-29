# Script to pull in API Dump and export it into a definition file
# Based off https://gist.github.com/HawDevelopment/97f2411149e24d8e7a712016114d55ff
from tkinter import E
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
    'RBXScriptSignal': "RBXScriptSignal",
}

def escapeName(name: str):
    if name == "function":
        return "func"
    return name.replace(' ', '_').replace('-', '').replace('"', '').replace('(', '').replace(')', '')

def resolveType(type):
    name, category = type['Name'], type['Category'] if 'Category' in type else 'Primitive'
    
    if name[-1] == '?':
        return resolveType({ 'Name': name[:-1], 'Category': category }) + "?"
    
    if category == "Enum":
        return "Enum." + name
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

def printDump(dump):
    for klass in dump['Classes']:
        print(declareClass(klass))
        print()


def printDataTypes(types):
    dataType = defaultdict(list)

    for klass in types['Constructors']:
        dataType[klass['Name']].extend(klass['Members'])
    for klass in types['DataTypes']:
        dataType[klass['Name']].extend(klass['Members'])

    for name, members in dataType.items():
        out = "declare " + name + ": {\n"
        for member in members:
            if member['MemberType'] == "Property":
                out += f"\t{escapeName(member['Name'])}: {resolveType(member['ValueType'])},\n"
            elif member['MemberType'] == "Function":
                out += f"\t{escapeName(member['Name'])}: ({resolveParameterList(member['Parameters'])}) -> {resolveReturnType(member)},\n"
            elif member['MemberType'] == "Event":
                out += f"\t{escapeName(member['Name'])}: RBXScriptSignal,\n" # TODO: type this                

        out += "}"
        print(out)
        print()

# Print global types
response = requests.get(DATA_TYPES_URL).text
printDataTypes(json.loads(response))

# Print dump
response = requests.get(API_DUMP_URL).text
printDump(json.loads(response))