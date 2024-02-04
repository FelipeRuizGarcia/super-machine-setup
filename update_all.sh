#!/bin/bash

# This script is the entry point

# Cleaning ? Uncomment
# brew cleanup
# brew cleanup --prune=all
# brew autoremove

# Config Values
# SMS_VERSION = 0.2

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    # Cleaning ? Uncomment
    # sudo dnf5 clean all
    # sudo dnf5 autoremove

    # if Fedora do need to grant sudo permission
    sudo echo "SMS UPDATE ALL"

    bash -x ./update_os_fedora.sh

# WIP elif [[ "$OSTYPE" == "darwin"* ]]; then
    # update os
    # update app store

fi

# common section
bash -x ./update_os_tools.sh
bash -x ./update_nvim.sh
