#!/usr/bin/env bash
source helpers.sh

if command_exists codium; then
    echo "codium is already installed and available in \$PATH."
    exit 0
fi

mkdir -p tmp
cd tmp
wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb
dpkg -i codium_1.93.1.24256_amd64.deb
cd ..

# TODO: copy config
