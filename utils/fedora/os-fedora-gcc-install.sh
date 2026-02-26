#!/bin/bash

# gcc packages
# https://koji.fedoraproject.org/koji/buildinfo?buildID=2613614

# set the same as fedora koji kernel
# https://kojipkgs.fedoraproject.org//packages/kernel/6.13.5/200.fc41/data/logs/x86_64/root.log

sudo dnf5 downgrade \
	--repo=updates \
       	--releasever=43 \
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
