#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "CocUpdateSync" \
    -c "MasonUpdate" \
    -c "quit" -c "quit"
