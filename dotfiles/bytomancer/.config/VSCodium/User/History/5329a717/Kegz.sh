#!/usr/bin/env bash
if [ $(id -u) -ne 0 ]; then
    >&2 echo "This script must be executed with root privledge"
    exit 1
fi
mkdir tmp
cd tmp
wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb

