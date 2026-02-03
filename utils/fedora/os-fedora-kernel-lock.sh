#!/bin/bash

set -eux

# lock current kernel version
# including headers

dnf5 versionlock add \
    'kernel-*'\
    'kernel-core-*'\
    'kernel-debug*'\
    'kernel-modules-*'\
    'kernel-modules-core*'\
    'kernel-modules-extra*'\
    'kernel-modules-internal*'\
    'kernel-selftests-internal*' \
    'kernel-headers*'\
    'kernel-cross-headers' \
    'kernel-tools*'\
    'kernel-tools-libs-devel*'\
    'kernel-devel*'\
    'kernel-devel-matched*'\
    'kernel-uki-virt*'\
    'bpftool' \
    'perf'\
    'rtla'\
    'rv'\
    'libperf'\
    'python3-perf'\
