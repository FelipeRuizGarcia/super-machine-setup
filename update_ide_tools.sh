#!/bin/bash

# update os
sudo dnf upgrade --refresh -y 

# update nvidia driver
sudo nvautoinstall driver

# update snap
snap refresh

# update omz
omz update

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

# update vim plugins
vim -c "PlugUpgrade" -c q!   
vim -c "PlugUpdate" -c q!   

