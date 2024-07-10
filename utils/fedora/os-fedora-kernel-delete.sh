#!/bin/bash

# list kernel's
rpm -q kernel

# delete kernel
sudo dnf5 remove kernel

# delete the no require kernel
# kernel-debuginfo
# kernel-debuginfo-common-x86_64-0
# etc
