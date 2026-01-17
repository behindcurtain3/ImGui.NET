#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Missing first argument. Please provide the tag to download."
    exit 1
fi

TAG=$1

SCRIPT_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Script is located in: $SCRIPT_ROOT"
echo "Using Tag: $TAG"

REPO=${REPO:-"https://github.com/behindcurtain3/imgui.net-nativebuild"}

echo "Using repository: $REPO"

echo -n "Downloading windows x86 cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/win-x86/cimgui.dll" "$REPO/releases/download/$TAG/cimgui.win-x86.dll"
echo ""

echo -n "Downloading windows x64 cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/win-x64/cimgui.dll" "$REPO/releases/download/$TAG/cimgui.win-x64.dll"
echo ""

echo -n "Downloading windows arm64 cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/win-arm64/cimgui.dll" "$REPO/releases/download/$TAG/cimgui.win-arm64.dll"
echo ""

echo -n "Downloading linux x64 cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/linux-x64/cimgui.so" "$REPO/releases/download/$TAG/cimgui.so"
echo ""

echo -n "Downloading osx universal (x86_64 and arm64) cimgui: "
curl -sfLo "$SCRIPT_ROOT/deps/cimgui/osx/cimgui.dylib" "$REPO/releases/download/$TAG/cimgui.dylib"
echo ""

echo -n "Downloading definitions json file: "
curl -sfLo "$SCRIPT_ROOT/src/CodeGenerator/definitions/cimgui/definitions.json" "$REPO/releases/download/$TAG/definitions.json"
echo ""

echo -n "Downloading structs and enums json file: "
curl -sfLo "$SCRIPT_ROOT/src/CodeGenerator/definitions/cimgui/structs_and_enums.json" "$REPO/releases/download/$TAG/structs_and_enums.json"
echo ""