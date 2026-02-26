#!/bin/bash

# This script updates the ONLY Fedora OS packages
# for more Fedora operations, look at ./utils/fedora/
# DNF5 - NVAUTOINSTALL - SNAP - FLATPAK

# NVAUTOINSTALL is being supported by `akmods-nvidia`
# we use the script ./utils/fedora/os-fedora-nvidia.sh
# We suggest use the guide directly
# https://rpmfusion.org/Howto/NVIDIA

# SNAP packages are being not use on the setup anymore

# update os packages # avoid kernel updates
# sudo dnf5 distro-sync -y --exclude=kernel
# update os packages and kernel # avoid kernel updates

    # --exclude='xorg-x11-drv-nvidia*' \
    # --exclude='cpp gcc gcc-c++' \
    # --exclude='grubby' \
    # --exclude=code-insiders \
    
    # --setopt=tsflags=nocrypto \

sudo dnf5 upgrade \
    --refresh \
    --exclude='kernel*' \
    --exclude='bpftool*' \
    --exclude='rtla' \
    --exclude='rv' \
    --exclude='libperf*' \
    --exclude='perf*' \
    --exclude='python3-perf*' \
    --exclude='code-insiders' \
    --exclude='discord' \
    --allowerasing \
    --no-gpgchecks \
    --exclude="nvidia-container-toolkit-base libnvidia-container* libnvidia-container-tools* nvidia-container-toolkit" \
    -y

flatpak upgrade -y

# sudo snap refresh

# update nvidia driver
# sudo nvautoinstall driver
# sudo nvautoinstall plcuda
# sudo nvautoinstall ffmpeg
# sudo nvautoinstall vidacc
# sudo nvautoinstall primec
