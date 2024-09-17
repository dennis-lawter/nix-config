#!/usr/bin/env bash

exit_with_err() {
    RED='\033[0;31m'
    RESET='\033[0m'
    >&2 echo -e "${RED}$1${RESET}"
    exit 1
}

main() {
    if [ $(id -u) -ne 0 ]; then
        exit_with_err "This script must be executed as root"
    fi
    mkdir tmp
    cd tmp
    wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb
}

main
