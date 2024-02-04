#!/bin/bash

# This script update the `common` tools for Fedora and Mac

# OS > TOOLS
# ALACRITTY > TMUX > TMUX PLUGINGS > OMZ

# brew upgrade with HEAD packages
brew upgrade --fetch-HEAD --verbose

# brew list --formula | xargs brew reinstall --build-from-source --verbose

# update omz
$HOME/.oh-my-zsh/tools/upgrade.sh

# update powerlevel
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull

# TMUX PLUGINS
~/.tmux/plugins/tpm/bin/update_plugins all
