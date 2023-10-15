#!/bin/bash

# minimal packages via OS;
# Fedora and MacOs
# Apps packages handled by brew
# Upstream ASAP

# Fedora
dnf copr enable rpmsoftwaremanagement/dnf5-unstable ;
sudo dnf groupinstall "Development Tools"
sudo dnf install dnf5 dnf5-plugins # Fedora 39 ? 
sudo dnf5 upgrade --refresh -y

# require for chsh
sudo dnf5 install util-linux-user
sudo dnf5 install awscli2 zsh nvim git tmux alacritty python3 node

# install omz and configure it
# ./install_omz.sh
# ./install_zshrc.sh

pip install virtualenvwrapper
python3 -m pip install --user --upgrade pynvim

# install p10k
# configure tmux

brew tap oven-sh/bun
brew install bun

# install brew
brew install pnpm aws-nuke aws-amplify cloud-nuke hugo  istioctl  kubernetes-cli  minikube typescript bat fzf

# brew mac only
brew install --cask macs-fan-control --cask rectangle
