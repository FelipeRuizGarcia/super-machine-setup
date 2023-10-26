#!/bin/bash

# ZSH > OMZ > P10K > ALACRITY > TMUX > NVIM > ALIAS

# vim/install_vimrc.sh
# tmux/install_tmux_plugin_manager.sh
# tmux/install_alacritty.sh
# p10k/install_p10k.sh
# omz/install_zshrc.sh
# omz/install_omz.sh

bash omz/install_zshrc.sh
bash omz/install_omz.sh
bash p10k/install_p10k.sh
bash tmux/install_alacritty.sh
bash tmux/install_tmux_plugin_manager.sh
bash vim/install_vimrc.sh

alias/install_alias_all.sh

echo "Super Machine Setup"
echo "--------------------"

echo "Installing SymLinks"
echo "--------------------"

echo "Install ZSH"

bash alias/install_alias_all.sh
echo "--------------------"

echo "Install Alias"
bash alias/install_alias_all.sh
echo "--------------------"


echo "--------------------"
echo "SymLinks Installed"
echo "--------------------"
