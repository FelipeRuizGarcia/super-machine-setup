#!/bin/bash

sudo dnf5 remove \
    --exclude="nvidia-container-toolkit" \
    --exclude="nvidia-container-toolkit-base" \
    --exclude="nvidia-gpu-firmware" \
    xorg-x11-drv-nvidia\* \
    nvidia\* \
    akmod-nvidia \
    nvidia-modprobe \
    nvidia-persistenced \
    nvidia-settings \
    nvidia-xconfig \
    xorg-x11-drv-nvidia\* \
    xorg-x11-drv-nvidia \
    xorg-x11-drv-nvidia-libs \
    xorg-x11-drv-nvidia-libs.i686 \
    xorg-x11-drv-nvidia-power \
    xorg-x11-drv-nvidia-cuda \
    xorg-x11-drv-nvidia-cuda-libs \
    xorg-x11-drv-nvidia-xorg-libs \
    xorg-x11-drv-nvidia-kmodsrc

sudo rm -f /usr/lib{,64}/libGL.so.* /usr/lib{,64}/libEGL.so.*
sudo rm -f /usr/lib{,64}/xorg/modules/extensions/libglx.so

# recover from installer from howto nvidia
    # --releasever=42 \
sudo dnf5 reinstall \
    nvidia-gpu-firmware \
    xorg-x11-server-Xorg mesa-libGL mesa-libEGL libglvnd\*

mv /etc/X11/xorg.conf /etc/X11/xorg.conf.saved

# sudo systemctl enable nvidia-suspend nvidia-resume nvidia-hibernate
