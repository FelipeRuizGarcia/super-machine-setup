#!/bin/bash

# https://docs.docker.com/engine/install/fedora
# https://docs.docker.com/engine/install/linux-postinstall
# enable the docker-ce repos and the test repo

sudo dnf5 install \
    --releasever=41 \
    --repo=docker-ce-test \
    --repo=rawhide \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable --now docker

sudo systemctl enable docker.service
# sudo systemctl enable containerd.service

systemctl status docker.service
# systemctl status docker.socket

### debug
# sudo dockerd --debug
# /etc/docker/daemon.json
# /usr/lib/
#
sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl enable containerd.service
