#!/bin/bash

# install omz
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# changing the default shell to zsh
chsh -s $(which zsh)
