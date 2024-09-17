#!/usr/bin/env bash
source helpers.sh

if command_exists vesktop; then
    echo "vesktop is already installed and available in \$PATH."
    exit 0
fi

mkdir -p tmp
cd tmp
wget https://github.com/Vencord/Vesktop/releases/download/v1.5.3/vesktop_1.5.3_amd64.deb
dpkg -i vesktop_1.5.3_amd64.deb
cd ..
