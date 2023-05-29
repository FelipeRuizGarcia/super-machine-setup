#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# COC List
rm ~/.config/coc/extensions/package.json
mkdir -p ~/.config/coc/extensions/
ln -s `pwd`/package.json ~/.config/coc/extensions/package.json

# NEOVIM LUA
rm ~/.config/nvim/init.lua
mkdir -p ~/.config/nvim/
# ln -s `pwd`/init.lua ~/.config/nvim/init.lua

# NEOVIM INIT VIM
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/
ln -s `pwd`/init.vim ~/.config/nvim/init.vim

# VIM NATIVE
rm ~/.vimrc
# ln -s `pwd`/vimrc ~/.vimrc

nvim -c :PlugInstall -c q!
