#!/bin/bash

# wifi does not working, which package include the wifi ?
# bluetooth tethering not working
#
sudo dnf5 reinstall '*firmware*';

# sudo dnf5 -y install realtek-firmware linux-firmware linux-firmware-whence --repo=rawhide
# Updating and loading repositories:
Repositories loaded.
Package                               Arch       Version                               Repositor
Installing:
 linux-firmware                       noarch     20241017-2.fc42                       rawhide
 linux-firmware-whence                noarch     20241017-2.fc42                       rawhide
 realtek-firmware                     noarch     20241017-2.fc42                       rawhide
Installing weak dependencies:
 amd-gpu-firmware                     noarch     20241017-2.fc42                       rawhide
 amd-ucode-firmware                   noarch     20241017-2.fc42                       rawhide
 atheros-firmware                     noarch     20241017-2.fc42                       rawhide
 brcmfmac-firmware                    noarch     20241017-2.fc42                       rawhide
 cirrus-audio-firmware                noarch     20241017-2.fc42                       rawhide
 intel-audio-firmware                 noarch     20241017-2.fc42                       rawhide
 intel-gpu-firmware                   noarch     20241017-2.fc42                       rawhide
 mt7xxx-firmware                      noarch     20241017-2.fc42                       rawhide
 nvidia-gpu-firmware                  noarch     20241017-2.fc42                       rawhide
 nxpwireless-firmware                 noarch     20241017-2.fc42                       rawhide
 tiwilink-firmware                    noarch     20241017-2.fc42                       rawhide
