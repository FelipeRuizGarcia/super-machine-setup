#!/bin/bash
# https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/

# sudo akmods --force

sudo dnf5 install \
    akmod-nvidia \
    nvidia-modprobe \
    nvidia-persistenced \
    nvidia-settings \
    xorg-x11-server-Xwayland \
    xorg-x11-server-common \
    xorg-x11-server-Xorg \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-libs \
    xorg-x11-drv-nvidia-power \
    xorg-x11-drv-nvidia-cuda \
    xorg-x11-drv-nvidia-cuda-libs \
    xorg-x11-drv-nvidia-xorg-libs \
    xorg-x11-drv-nvidia-kmodsrc \
    gnome-session-wayland-session \
    libwayland-client \
    libwayland-cursor \
    libwayland-egl \
    libwayland-server \
    qt5-qtwayland \
    qt6-qtwayland \
    wayland-devel \
    xisxwayland \
    xorg-x11-server-Xwayland

# 'nvidia*' \
# sudo dnf5 install nvidia-gpu-firmware;
# sudo dnf5 reinstall '*firmware*';

sudo systemctl enable nvidia-suspend nvidia-resume nvidia-hibernate
