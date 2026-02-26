#!/bin/bash

sudo dnf5 versionlock add \
    akmod-nvidia \
    nvidia-gpu-firmware \
    nvidia-modprobe \
    nvidia-persistenced \
    nvidia-settings \
    nvidia-xconfig \
    xorg-x11-server-Xwayland \
    xorg-x11-server-common \
    xorg-x11-server-Xorg \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-libs \
    xorg-x11-drv-nvidia-libs.i686 \
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
