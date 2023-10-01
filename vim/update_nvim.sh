#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "CocUpdate" \
    -c "quit" -c "quit"
