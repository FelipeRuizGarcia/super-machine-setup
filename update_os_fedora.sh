#!/bin/bash

# This script updates the ONLY Fedora OS packages
# for more Fedora operations, look at ./utils/fedora/

# OS > TOOLS
# DNF > NVAUTOINSTALL > SNAP > FLATPAK

# update os packages # avoid kernel updates
# sudo dnf5 distro-sync -y --exclude=kernel

# update os packages and kernel # avoid kernel updates
sudo dnf5 upgrade --refresh -y --exclude=code-insiders # --exclude=kernel

sudo snap refresh

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vidacc
# sudo nvautoinstall primec

flatpak upgrade -y
