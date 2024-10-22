#!/bin/bash

mokutil --sb-state

# sudo dnf5 upgrade 'kernel*-6.9*-350.vanilla.fc40.x86_64' --releasever=40
# sudo dnf5 install 'kernel*-6.9.8*-350.vanilla.fc40.x86_64' --releasever=40 --exclude='kernel-debuginfo*' --exclude='kernel-tools-debuginfo*'

# sudo dnf5 install kernel-headers --repo='coprdep:copr.fedorainfracloud.org:group_kernel-vanilla:fedora' --releasever=40
# --repo='coprdep:copr.fedorainfracloud.org:group_kernel-vanilla:fedora' 

# sudo dnf5 reinstall 'kernel*' --repo=fedora-rawhide-nodebug --exclude='*debug*'
# kernel-6.10.5-350.vanilla.fc40.src.rpm
    # --allowerasing \
    # --allow-downgrade \
    # --releasever=40 \
    # --repo='nodebug' \

# dnf-3 allows install newer kernel with conflicts with current upstream kernels.
# sudo dnf-3 reinstall \
#

# 'kernel-devel*'$family_kernel'*' \ # requires gcc which requires kernel headers \
# 'kernel-devel-matched*'$family_kernel'*' # required  by akmods

export family_kernel='6.11.4-450.vanilla';

sudo dnf5 install \
    --repo='vanilla' \
    --releasever=41 \
    --exclude='kernel-debuginfo*' \
    --exclude='kernel-tools-debuginfo*' \
    --exclude='libperf-debuginfo-*' \
    --exclude='bpftool-debuginfo-*' \
    --exclude='python3-perf-debuginfo-*' \
    --exclude='perf-debuginfo-*' \
    --exclude='kernel-selftests*' \
    'kernel-*'$family_kernel'*' \
    'kernel-core*'$family_kernel'*' \
    'kernel-modules*'$family_kernel'*' \
    'kernel-headers*'$family_kernel'*' \
    'kernel-cross-headers*'$family_kernel'*' \
    'kernel-tools*'$family_kernel'*' \
    'kernel-devel*'$family_kernel'*' \
    'kernel-devel-matched*'$family_kernel'*' \
    'bpftool*'$family_kernel'*' \
    'perf*'$family_kernel'*' \
    'rtla*'$family_kernel'*' \
    'rv*'$family_kernel'*' \
    'libperf*'$family_kernel'*' \
    'python3-perf*'$family_kernel'*'

