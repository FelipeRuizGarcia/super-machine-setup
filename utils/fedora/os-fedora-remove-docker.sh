#!/bin/bash

sudo dnf remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-selinux \
    docker-engine-selinux \
    docker-engine \
    '*podman*' '*docker*' '*moby*' '*containerd*'

sudo dnf5 remove docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
# systemctl status docker.socket
# systemctl status docker.service

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# the network interface `docker0` is used by docker
# sometimes is use by other container service
# like moby wich is not from Docker
# dockerd[1413]: time="2025-03-08T07:32:30.766642412-06:00" level=info msg="stopping event stream following graceful shutdown" error="<nil>" module=libcontainerd namespace=moby
# dockerd[1413]: time="2025-03-08T07:32:30.766856755-06:00" level=info msg="stopping event stream following graceful shutdown" error="context canceled" module=libcontainerd namespace=plugins.moby
#
#
# sudo ip link delete docker0
#
# looking for the moby commands
# in the learner repo and the command history
