#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "TSUpdateSync all" \
    -c "CocCommand extensions.forceUpdateAll" \
    -c "CocUpdateSync" \
    -c "MasonUpdate" \
    -c "qa!"
