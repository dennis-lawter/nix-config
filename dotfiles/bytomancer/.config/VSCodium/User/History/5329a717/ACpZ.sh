#!/usr/bin/env bash

exit_with_err() {
    RED='\033[0;31m'
    RESET='\033[0m'
    >&2 echo -e "${RED}$1${RESET}"
    exit 1
}

# Ensure the script is run as root
if [ $(id -u) -ne 0 ]; then
    exit_with_err "This script must be executed as root"
fi

# Define the directory containing your scripts
SCRIPT_DIR="./scripts"

# Create a temporary directory if needed (and switch to it if necessary)
mkdir -p tmp
cd tmp || exit_with_err "Failed to change directory to tmp"

# Download and install VSCodium
wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb
dpkg -i codium_1.93.1.24256_amd64.deb

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
