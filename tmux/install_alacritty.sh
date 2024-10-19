#!/bin/bash

# define the source file and target location
source_file="$(pwd)/tmux/alacritty.toml"
target_location="$HOME/.alacritty.toml"

# remove the existing target location if it exists
if [ -e "${target_location}" ]; then
    rm "${target_location}" 
fi

# create the symbolic link
ln -s "${source_file}" "${target_location}"
