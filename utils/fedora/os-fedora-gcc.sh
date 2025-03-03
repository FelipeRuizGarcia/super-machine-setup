#!/bin/bash

# gcc packages
# gcc.x86_64                   15.0.1-0.8.fc43 updates
# gcc-c++.x86_64               15.0.1-0.8.fc43 updates
# gcc-plugin-annobin.x86_64    15.0.1-0.8.fc43 updates
# libgcc.i686                  15.0.1-0.8.fc43 updates
# libgcc.x86_64                15.0.1-0.8.fc43 updates
# 
# # c++ packages
# gcc-c++.x86_64         15.0.1-0.8.fc43 updates
# libsigc++20.x86_64     2.12.1-5.fc42   rawhide
# libsigc++30.x86_64     3.6.0-5.fc42    rawhide
# libstdc++.i686         15.0.1-0.8.fc43 updates
# libstdc++.x86_64       15.0.1-0.8.fc43 updates
# libstdc++-devel.x86_64 15.0.1-0.8.fc43 updates
# 
# # cpp packages
# Installed packages
# cpp.x86_64             15.0.1-0.8.fc43   updates
# cppunit.x86_64         1.15.1-24.fc42    rawhide
# cppunit-devel.x86_64   1.15.1-24.fc42    rawhide
# inih-cpp.x86_64        58-3.fc42         rawhide

# export version="14.2.1-7";

sudo dnf5 downgrade --repo=updates --releasever=41 \
gcc.x86_64 \
gcc-c++.x86_64 \
gcc-plugin-annobin.x86_64 \
libgcc.i686 \
libgcc.x86_64 \
gcc-c++.x86_64 \
libsigc++20.x86_64 \
libsigc++30.x86_64 \
libstdc++.i686 \
libstdc++.x86_64 \
libstdc++-devel.x86_64 \
cpp.x86_64 \
cppunit.x86_64 \
cppunit-devel.x86_64 \
inih-cpp.x86_64
