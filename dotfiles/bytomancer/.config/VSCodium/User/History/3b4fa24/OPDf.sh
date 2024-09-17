#!/usr/bin/env bash
source helpers.sh

if command_exists codium; then
    echo "Codium is already installed and available in \$PATH."
    exit 0
fi

https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip