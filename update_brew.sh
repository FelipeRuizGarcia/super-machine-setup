#!/bin/bash

# Brew
# ----

# which pkgs build from sources ? TODO
#
# which pkgs are common ? Those with brew formula

# Snap packages should be configure as cask packages
# Since brew cask does not work on linux
# assuming stable versions from those.

# Those that are custom name for snap
PKGS_SNAP_ONLY=(
    figma-linux
    zoom-client
    code # visual-studio-code
)

# TODO is the firefox-dev ? firefox-developer-edition same as snap --beta ?
# firefox-dev-119.0b9-1.fc38.x86_64.rpm

# Brew CASK
PKGS_BREW_MAC = (
    authy
    chromium
    figma
    firefox
    slack
    spotify
    zoom
    visual-studio-code
)

echo ${SNAP_PACKAGES[@]}

