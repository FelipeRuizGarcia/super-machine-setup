#!/bin/bash
# This script download the kernel from 
# the koji server https://koji.fedoraproject.org/koji
# to the desire path, by default ~/kernels

# KERNEL
# https://bodhi.fedoraproject.org/updates/?search=kernel&releases=F43
# by default, it download the latest version of current release "STABLE" fedora
# of the following packages
# * kernel-headers https://koji.fedoraproject.org/koji/packageinfo?packageID=27325
# 
#
#
# define which kernels, 
#   by default, download the latest stable
#   
# KERNEL


set -x
set -u

latest_kernel
latest_kernel_headers=

koji download-build kernel-headers-6.16.2-200.fc42 --arch=x86_64

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


# 'kernel-*'$family_kernel'.src.rpm' \

sudo dnf5 install \
    --releasever=41 \
    --allow-downgrade \
    --allowerasing \
    --repo=updates-testing \
    --exclude='kernel-debuginfo*' \
    --exclude='kernel-tools-debuginfo*' \
    --exclude='libperf-debuginfo-*' \
    --exclude='bpftool-debuginfo-*' \
    --exclude='python3-perf-debuginfo-*' \
    --exclude='perf-debuginfo-*' \
    --exclude='kernel-selftests*' \
    'kernel-*'$family_kernel'*' \
    'kernel-core-*'$family_kernel'*' \
    'kernel-modules-*'$family_kernel'*' \
    'kernel-modules-core*'$family_kernel'*' \
    'kernel-modules-extra*'$family_kernel'*' \
    'kernel-modules-internal*'$family_kernel'*' \
    'kernel-headers*'\
    'kernel-cross-headers' \
    'kernel-tools*'$family_kernel'*' \
    'kernel-tools-libs-devel*'$family_kernel'*' \
    'kernel-devel*'$family_kernel'*' \
    'kernel-devel-matched*'$family_kernel'*' \
    'kernel-uki-virt*'$family_kernel'*' \
    'bpftool' \
    'perf*'$family_kernel'*' \
    'rtla*'$family_kernel'*' \
    'rv*'$family_kernel'*' \
    'libperf*'$family_kernel'*' \
    'python3-perf*'$family_kernel'*'

