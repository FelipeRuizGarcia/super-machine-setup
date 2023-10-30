#!/bin/bash

# Prepare Upgrade
sudo dnf5 --refresh upgrade

# Upgrade to Fedora Release
sudo dnf system-upgrade download --releasever=39 -y 

# WARNING: Optial skipe broke dependencies
# sudo dnf system-upgrade download --releasever=39 -y --skip-broken

# Read about x11 vs wayland
# https://docs.fedoraproject.org/en-US/quick-docs/configuring-xorg-as-default-gnome-session/

sudo dnf system-upgrade reboot
