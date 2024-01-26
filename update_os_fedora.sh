#!/bin/bash

# This script updates the ONLY Fedora OS packages
# for more Fedora operations, look at ./utils/fedora/

# OS > TOOLS
# DNF > NVAUTOINSTALL > SNAP > FLATPAK

dnf5 clean all

# update os packages
# sudo dnf5 distro-sync -y

# avoid kernel updates
# sudo dnf5 distro-sync -y --exclude=kernel
# sudo dnf5 upgrade --refresh -y --exclude=kernel

# update os packages and kernel
sudo dnf5 upgrade --refresh -y

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vidacc
# sudo nvautoinstall primec

sudo snap refresh

# flatpak upgrade -y
