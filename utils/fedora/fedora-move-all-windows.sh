#!/bin/bash

# Get the name of the left display
LEFT_DISPLAY=$(swaymsg -t get_outputs | jq -r '.[] | select(.rect.x == 0) | .name')

# Move all windows to the left display
for window in $(swaymsg -t get_tree | jq -r '.. | select(.type? == "con" and .window?) | .id'); do
    swaymsg "[con_id=$window]" move container to output $LEFT_DISPLAY
done

