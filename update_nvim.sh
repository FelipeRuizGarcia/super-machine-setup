#!/bin/bash
# NVIM > plugins

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "TSUpdateSync all" \
    -c "CocUpdateSync" \
    -c "MasonUpdate" \
    -c "qa!"
