#!/usr/bin/env bash
source helpers.sh

SCRIPT_DIR="./installers"

if [ $(id -u) -ne 0 ]; then
    exit_with_err "This script must be executed as root"
fi

# Make sure SCRIPT_DIR exists
if [ ! -d "$SCRIPT_DIR" ]; then
    exit_with_err "Script directory $(pwd)$SCRIPT_DIR does not exist"
fi

# Loop through all .sh files in the SCRIPT_DIR and execute them
for script in "$SCRIPT_DIR"/*.sh; do
    if [ -f "$script" ]; then
        echo "Executing $script..."
        bash "$script" || exit_with_err "Failed to execute $script"
    fi
done
