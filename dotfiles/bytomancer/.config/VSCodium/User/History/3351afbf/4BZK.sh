#!/usr/bin/env bash
source helpers.sh

DEBIAN_FRONTEND=noninteractive apt-get install -y \
htop \

flatpak install flathub dev.vencord.Vesktop