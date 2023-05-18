#!/bin/bash

sudo dnf upgrade --refresh -y

# require for chsh
dnf install util-linux-user
sudo dnf install zsh nvim git tmux

# git store credentials
# git config credential.helper store

# install omz and configure it
# ./install_omz.sh
# ./install_zshrc.sh

pip install virtualenvwrapper
# install p10k
#
# configure tmux
#

# JS / NODE INSTALLATION
sudo dnf install nodejs -y
# install pnpm
