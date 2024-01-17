#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugUpgrade" \
    -c "PlugUpdate!" \
    -c "TSUpdate all" \
    -c "CocUpdateSync" \
    -c "MasonUpdate" \
    -c "PlugClean" \
    -c "quit" -c "quit"
