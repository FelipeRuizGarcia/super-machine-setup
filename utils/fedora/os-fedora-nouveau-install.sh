#!/bin/bash

# sudo akmods --force

sudo dnf5 install \
 --releasever=rawhide \
 --refresh
'*nouveau*'

sudo grub2-mkconfig -o /boot/grub2/grub.cfg

sudo dracut --force
