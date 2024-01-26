#!/bin/bash

# TODO: this is a user config file
# List of copr to install

# Kernel Upstream, select at your own evaluation
sudo dnf5 copr enable @kernel-vanilla/stable-rc
sudo dnf5 copr enable @kernel-vanilla/mainline-wo-mergew

# Third Party
sudo dnf5 copr enable copr:copr.fedorainfracloud.org:t0xic0der:nvidia-auto-installer-for-fedora
sudo dnf5 copr enable copr:copr.fedorainfracloud.org:the4runner:firefox-dev
