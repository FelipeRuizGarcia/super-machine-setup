#!/bin/bash

# firmware documentation
# https://fedoraproject.org/wiki/Firmware#Available_firmware

lspci | rg -S intel;
# sudo dnf5 reinstall '*firmware*';


sudo dnf5 install iwl7260-firmware

iwlwifi-mvm-firmware

