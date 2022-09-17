#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NEOVIM LUA
rm ~/.config/nvim/init.lua
# ln -s `pwd`/init.lua ~/.config/nvim/init.lua

# NEOVIM INIT VIM
rm ~/.config/nvim/init.vim
ln -s `pwd`/init.vim ~/.config/nvim/init.vim

# VIM NATIVE
rm ~/.vimrc
# ln -s `pwd`/vimrc ~/.vimrc

nvim -c :PlugInstall -c q!
