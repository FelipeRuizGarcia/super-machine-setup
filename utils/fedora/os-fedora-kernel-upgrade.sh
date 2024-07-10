#!/bin/bash

mokutil --sb-state

# sudo dnf5 upgrade 'kernel*-6.9*-350.vanilla.fc40.x86_64' --releasever=40
# sudo dnf5 install 'kernel*-6.9.8*-350.vanilla.fc40.x86_64' --releasever=40 --exclude='kernel-debuginfo*' --exclude='kernel-tools-debuginfo*'

sudo dnf5 reinstall \
    --releasever=40 \
    --allow-downgrade \
    --allowerasing \
    kernel-devel-6.9.5-350.vanilla.fc40.x86_64
