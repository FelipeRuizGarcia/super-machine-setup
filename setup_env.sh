#!/bin/bash

sudo dnf upgrade --refresh -y

# require for chsh
dnf install util-linux-user
sudo dnf install awscli2 zsh nvim git tmux alacritty

# install omz and configure it
# ./install_omz.sh
# ./install_zshrc.sh

pip install virtualenvwrapper
# install p10k
# configure tmux

# JS / NODE INSTALLATION
sudo dnf install nodejs -y

brew tap oven-sh/bun
brew install bun

# install brew
brew install pnpm aws-nuke aws-amplify cloud-nuke hugo  istioctl  kubernetes-cli  minikube typescript bat

# brew mac only
# brew install --cask macs-fan-control --cask rectangle
