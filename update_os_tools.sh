#!/bin/bash
#
# OS > TOOLS
# OS > ALACRITTY > TMUX > TMUX PLUGINGS > OMZ > NVIM

# update os
sudo dnf5 upgrade --refresh -y

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vidacc
# sudo nvautoinstall primec

# update snap
sudo snap refresh

# upgrade brew
brew upgrade

# update flatpak
flatpak upgrade -y

# update omz
$HOME/.oh-my-zsh/tools/upgrade.sh

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

# TMUX PLUGINS
~/.tmux/plugins/tpm/bin/update_plugins all
