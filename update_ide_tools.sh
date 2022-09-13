#!/bin/bash

# update os
sudo dnf upgrade --refresh -y 

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda

# update snap
snap refresh

# update flatpak
flatpak update

# update omz
# omz update

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

# update vim plugins
nvim -c "PlugUpgrade" -c q!   
nvim -c "PlugUpdate" -c q!   

