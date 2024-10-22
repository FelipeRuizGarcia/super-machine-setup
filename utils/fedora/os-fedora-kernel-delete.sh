#!/bin/bash

# list kernel's
rpm -aq kernel

export family_kernel='6.11.4-450.vanilla';

# you can not remove an "upgrade vs installed" package
# 1. upgrade the kernel and libs to the desired kernel
#       with the kernel-upgrade script
# 2. 

sudo dnf5 remove \
    --exclude=akmod-nvidia \
    --exclude=akmods \
    --exclude=rpm-build \
    --exclude='kernel*'$family_kernel'*' \
    'kernel' \
    'kernel-core*' \
    'kernel-modules*' \
    'kernel-headers*' \
    'kernel-cross-headers*' \
    'kernel-tools*' \
    'kernel-devel*' \
    'kernel-devel-matched*' \
    'bpftool*' \
    'perf*' \
    'rtla*' \
    'rv*' \
    'libperf*' \
    'python3-perf*' 

sudo grub2-mkconfig -o /boot/grub2/grub.cfg
