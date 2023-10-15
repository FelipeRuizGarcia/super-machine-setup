#!/bin/bash

# GOAL: Upstream ASAP
# minimal packages via OS;
# Fedora and MacOs
# Assume Fedora, with the unique diff
# to build-from source for brew
#
# Apps packages handled by brew
#
# 1. Fedora
# 2. Brew Common
# 3. Configs
# 4. MacOs Only

# Fedora
# Fedora 39 ? 
dnf copr enable rpmsoftwaremanagement/dnf5-unstable ;
sudo dnf groupinstall "Development Tools"
sudo dnf install dnf5 dnf5-plugins # Fedora 39 ? 
sudo dnf5 upgrade --refresh -y

# require for brew
sudo dnf5 install procps-ng curl file git -y

# require for chsh
sudo dnf5 install util-linux-user -y 

# Fedora Nvidia Driver
dnf5 install dnf-plugins-core -y
dnf5 copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
dnf5 install nvautoinstall -y

# compile for linux ? Better performance ?
sudo dnf5 install -y \
    zsh \
    alacritty \
    tmux \
    python3

# Brew
# ----

# ide
brew install -s bat fzf nvim 

# web
brew tap oven-sh/bun
brew install -s bun pnpm hugo typescript node nvm

# aws
brew install -s awscli aws-nuke aws-amplify cloud-nuke

# devtools # optional
# brew install -s istioctl kubernetes-cli minikube

# install omz and configure it
# ./install_omz.sh
# ./install_zshrc.sh

# brew config
# autocompletation
compinit
chmod -R go-w "$(brew --prefix)/share"

pip install virtualenvwrapper
python3 -m pip install --user --upgrade pynvim

# install p10k
# configure tmux

# MacOs only
brew install --cask macs-fan-control --cask rectangle

echo "Next steps"
echo " # Configure the alacritty config file"

