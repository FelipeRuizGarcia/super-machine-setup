#!/bin/bash

nvim \
    -c "PlugClean" \
    -c "PlugUpgrade" \
    -c "PlugUpdate" \
    -c "CocUpdate" \
    -c "quit" -c "quit"
