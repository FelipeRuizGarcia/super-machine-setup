#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

rm ~/.p10k.zsh
ln -s `pwd`/p10k.zsh ~/.p10k.zsh
