#!/usr/bin/env bash
source helpers.sh

# TODO: su to user... oh no...

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
rustup default nightly
