#!/usr/bin/env bash
source helpers.sh

if [ $(id -u) -ne 0 ]; then
    exit_with_err "This script must be executed as root"
fi

SCRIPT_DIR="./installers"

# Make sure SCRIPT_DIR exists
if [ ! -d "$SCRIPT_DIR" ]; then
    exit_with_err "Script directory $(pwd)$SCRIPT_DIR does not exist"
fi

# Update apt
echo "Updating apt"
DEBIAN_FRONTEND=noninteractive apt update

# Loop through all .sh files in the SCRIPT_DIR, sorted by filename
for script in $(ls "$SCRIPT_DIR"/*.sh | sort); do
    if [ -f "$script" ]; then
        echo "Executing $script..."
        bash "$script" || exit_with_err "Failed to execute $script"
    fi
done
