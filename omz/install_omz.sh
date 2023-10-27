#!/bin/bash

# this instalation should be part of the setup ?
# handled by brew ?
# install o`mz
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# changing the default shell to zsh
chsh -s $(which zsh)
