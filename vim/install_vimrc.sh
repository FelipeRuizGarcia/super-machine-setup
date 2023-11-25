#!/bin/bash

# NEOVIM unix
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# COC List
rm ~/.config/coc/extensions/package.json
mkdir -p ~/.config/coc/extensions/

# Package.json is handled for SMS
ln -s `pwd`/package.json ~/.config/coc/extensions/package.json

# NEOVIM INIT VIM
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/
ln -s `pwd`/init.vim ~/.config/nvim/init.vim

# VIM NATIVE
# Delete no require vim files
rm ~/.vimrc

nvim -c :PlugInstall -c q!
