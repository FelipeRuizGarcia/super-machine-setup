#!/bin/bash

# OS > TOOLS
# OS > ALACRITTY > TMUX > TMUX PLUGINGS > OMZ

# clean up
dnf5 clean all

# update os packages
# sudo dnf5 distro-sync -y

# update os packages and kernel
sudo dnf5 upgrade --refresh -y

# avoid kernel updates
# sudo dnf5 distro-sync -y --exclude=kernel
# sudo dnf5 upgrade --refresh -y --exclude=kernel

# update nvidia driver
sudo nvautoinstall driver
sudo nvautoinstall plcuda
sudo nvautoinstall ffmpeg
sudo nvautoinstall vidacc
# sudo nvautoinstall primec

# update snap
# sudo snap refresh figma-linux --edge
sudo snap refresh

# brew upgrade
brew upgrade --fetch-HEAD # update HEAD packages
# brew list --formula | xargs brew reinstall --build-from-source --verbose

# update flatpak
flatpak upgrade -y

# update omz
$HOME/.oh-my-zsh/tools/upgrade.sh

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

# TMUX PLUGINS
~/.tmux/plugins/tpm/bin/update_plugins all
