#!/bin/bash
# UNSTABLE / WORK IN PROGRESS

# PULSEAUDIO is not required
# Bluetooth mandatory packages
# bluez.x86_64                    5.78-1.fc42                         rawhide
# bluez-cups.x86_64               5.78-1.fc42                         rawhide
# bluez-deprecated.x86_64         5.78-1.fc42                         rawhide
# bluez-hcidump.x86_64            2.5-26.fc41                         rawhide
# bluez-hid2hci.x86_64            5.78-1.fc42                         rawhide
# bluez-libs.x86_64               5.78-1.fc42                         rawhide
# bluez-libs-devel.x86_64         5.78-1.fc42                         rawhide
# bluez-mesh.x86_64               5.78-1.fc42                         rawhide
# bluez-obexd.x86_64              5.78-1.fc42                         rawhide
# bluez-tools.x86_64              0.2.0-0.24.git20170912.7cb788c.fc41 rawhide
# gnome-bluetooth.x86_64          1:47.1-1.fc42                       rawhide
# gnome-bluetooth-libs.x86_64     1:47.1-1.fc42                       rawhide
# gnome-bluetooth3.34.x86_64      3.34.5-8.fc41                       rawhide
# gnome-bluetooth3.34-libs.x86_64 3.34.5-8.fc41                       rawhide

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
