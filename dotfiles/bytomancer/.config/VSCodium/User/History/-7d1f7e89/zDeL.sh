if (which codium >/dev/null 2>&1); then exit 0 fi
wget https://github.com/VSCodium/vscodium/releases/download/1.93.1.24256/codium_1.93.1.24256_amd64.deb
dpkg -i codium_1.93.1.24256_amd64.deb