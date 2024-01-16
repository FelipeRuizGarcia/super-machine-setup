#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "TSUpdate all" \
    -c "CocUpdateSync" \
    -c "MasonUpdate" \
    -c "quit" -c "quit"
