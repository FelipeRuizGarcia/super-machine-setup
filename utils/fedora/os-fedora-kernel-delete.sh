#!/bin/bash

# list kernel's
rpm -aq kernel

# delete kernel
# sudo dnf5 remove kernel

sudo dnf5 remove \
    --exclude='kernel*6.11.4*' \
    --exclude='kernel-*6.11.4-450.vanilla.fc41.x86_64' \
    'kernel*' \
    'kernel-devel*' \
    'kernel-debuginfo*' \
    'kernel-tools*'  \
    'kernel-tools-debuginfo*' 

sudo grub2-mkconfig -o /boot/grub2/grub.cfg
