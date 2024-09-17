#!/usr/bin/env bash
source helpers.sh

if command_exists godot4; then
    echo "godot4 is already installed and available in \$PATH."
    exit 0
fi

mkdir -p tmp
cd tmp
wget https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip
unzip Godot_v4.3-stable_linux.x86_64.zip

# TODO: put in PATH
