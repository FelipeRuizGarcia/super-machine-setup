#!/bin/bash

# TMUX PLUGINS
~/.tmux/plugins/tpm/bin/update_plugins all

# update os
sudo dnf upgrade --refresh -y 

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vidacc
# sudo nvautoinstall primec

# upgrade brew
brew upgrade

# update snap
sudo snap refresh

# update flatpak
flatpak upgrade -y

# update omz
# omz update

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

### IDE ###
# pnpm TODO: change for Brew to handle the package
wget -qO- https://get.pnpm.io/install.sh | sh -

# update vim plugins
nvim -c "PlugClean" -c q!   
nvim -c "PlugUpgrade" -c q!   

