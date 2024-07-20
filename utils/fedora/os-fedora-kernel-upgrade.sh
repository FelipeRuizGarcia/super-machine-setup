#!/bin/bash

# mokutil --sb-state

# sudo dnf5 upgrade 'kernel*-6.9*-350.vanilla.fc40.x86_64' --releasever=40
# sudo dnf5 install 'kernel*-6.9.8*-350.vanilla.fc40.x86_64' --releasever=40 --exclude='kernel-debuginfo*' --exclude='kernel-tools-debuginfo*'

# sudo dnf5 install rv-6.9.9-350.vanilla.fc40 --releasever=40

    # --releasever=40 \
    # --no-allow-downgrade \
#sudo dnf5 upgrade \
sudo dnf5 reinstall \
    --allowerasing \
    --allow-downgrade \
    --exclude='kernel-debuginfo*' \
    --exclude='kernel-tools-debuginfo*' \
    --exclude='libperf-debuginfo-6.9.9-350.vanilla.fc40.x86_64' \
    --exclude='bpftool-debuginfo-6.9.9-350.vanilla.fc40.x86_64' \
    --exclude='python3-perf-debuginfo-6.9.9-350.vanilla.fc40.x86_64' \
    --exclude='perf-debuginfo-6.9.9-350.vanilla.fc40.x86_64' \
    kernel \
    bpftool \
    kernel-core \
    kernel-modules \
    kernel-modules-core \
    kernel-modules-extra \
    kernel-modules-internal \
    libperf \
    perf \
    python3-perf \
    rtla \
    rv
