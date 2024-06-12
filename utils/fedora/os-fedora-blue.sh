#!/bin/bash

sudo dnf5 reinstall -y \
    'bluez*' \
    'pulseaudio*' \
    'gnome-bluetooth*' \
    'gnome-control-center*'
