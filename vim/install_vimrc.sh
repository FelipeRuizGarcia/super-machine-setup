#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NEOVIM NEW
rm ~/.config/nvim/init.vim
ln -s `pwd`/init.vim ~/.config/nvim/init.vim

# VIM NATIVE
rm ~/.vimrc
ln -s `pwd`/vimrc ~/.vimrc

nvim -c :PlugInstall -c q!
