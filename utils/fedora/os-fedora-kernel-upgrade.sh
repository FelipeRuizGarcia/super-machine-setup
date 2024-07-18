#!/bin/bash

mokutil --sb-state

# sudo dnf5 upgrade 'kernel*-6.9*-350.vanilla.fc40.x86_64' --releasever=40
# sudo dnf5 install 'kernel*-6.9.8*-350.vanilla.fc40.x86_64' --releasever=40 --exclude='kernel-debuginfo*' --exclude='kernel-tools-debuginfo*'

    # --releasever=40 \
sudo dnf5 upgrade \
    --allow-downgrade \
    --allowerasing \
    'kernel-*6.9.*' \
    'bpftool*6.9.*' \
