#!/usr/bin/env bash

source helpers.sh

# Ensure the script is run as root
if [ $(id -u) -ne 0 ]; then
    exit_with_err "This script must be executed as root"
fi

SCRIPT_DIR="../installers"


cd tmp || exit_with_err "Failed to change directory to tmp"

# Make sure SCRIPT_DIR exists
if [ ! -d "$SCRIPT_DIR" ]; then
    exit_with_err "Script directory $SCRIPT_DIR does not exist"
fi

# Loop through all .sh files in the SCRIPT_DIR and execute them
for script in "$SCRIPT_DIR"/*.sh; do
    if [ -f "$script" ]; then
        echo "Executing $script..."
        bash "$script" || exit_with_err "Failed to execute $script"
    fi
done
