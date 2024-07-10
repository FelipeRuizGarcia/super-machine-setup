#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "CocUpdateSync" \
    -c "CocCommand extensions.forceUpdateAll" \
    -c "MasonUpdate" \
    -c "TSUpdateSync" \
    -c "PlugClean!" \
    -c "qa!"
