#!/usr/bin/env bash

# Helpers
function exit_with_err() {
    RED='\033[0;31m'
    RESET='\033[0m'
    >&2 echo "${RED}$2${RESET}
    exit $1
}

if [ $(id -u) -ne 0 ]; then
    
fi
mkdir tmp
cd tmp
wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb

