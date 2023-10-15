#!/bin/bash

# minimal packages via OS;
# Fedora and MacOs
# Apps packages handled by brew
# Upstream ASAP
#
# 1. Fedora
# 2. Brew Common
# 3. Configs
# 4. MacOs Only

# Fedora
dnf copr enable rpmsoftwaremanagement/dnf5-unstable ;
sudo dnf groupinstall "Development Tools"
sudo dnf install dnf5 dnf5-plugins # Fedora 39 ? 
sudo dnf5 upgrade --refresh -y

# require for chsh
sudo dnf5 install util-linux-user

# compile for linux ? Better performance ?
sudo dnf5 install \
    zsh \
    alacritty

brew tap oven-sh/bun
brew install bun

# install brew
brew install pnpm aws-nuke aws-amplify cloud-nuke hugo  istioctl  kubernetes-cli  minikube typescript bat fzf nvim git tmux alacritty python3 node

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

