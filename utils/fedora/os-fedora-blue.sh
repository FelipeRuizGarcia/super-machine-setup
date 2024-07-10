#!/bin/bash

# does not update the sounds devices on gnome
sudo dnf5 reinstall -y \
    'pulseaudio*' \
    'alsa*' \
    'pipewire*' \

# this reload the sound devices on gnome
sudo dnf5 reinstall -y \
    'bluez*' \
    'gnome-bluetooth*' \
    'gnome-control-center*'

sudo dnf5 -y reinstall realtek-firmware linux-firmware linux-firmware-whence

sudo dnf5 reinstall 'glibc*' -y

# pactl info
# inxi -A

### after reinstalling it works

# sudo dnf5 install bluez bluez-utils bluez-libs bluez-cups bluez-libs-devel bluez-hid2hci bluez-hcidump bluez-obexd bluez-tools bluez-libs-devel pulseaudio-module-bluetooth --skip-unavailable

# sudo dnf5 reinstall pulseaudio pulseaudio-utils pulseaudio-libs pulseaudio-module-bluetooth
# alsa-plugins-pulseaudio
#
# 
# sudo dnf5 install alsa-utils
# sudo dnf5 reinstall pulseaudio alsa-plugins-pulseaudio alsa-lib alsa-utils
# reboot
# alsamixer
#
# pulseaudio-module-bluetooth
# systemctl --user restart pulseaudio
