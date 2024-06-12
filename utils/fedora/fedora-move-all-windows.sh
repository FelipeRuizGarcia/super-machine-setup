#!/bin/bash

# Get the name of the built-in display
BUILTIN_DISPLAY=$(xrandr | grep " connected" | grep "primary" | awk '{print $1}')

# Get the resolution of the built-in display
RESOLUTION=$(xrandr | grep "^$BUILTIN_DISPLAY" | grep -o "[0-9]*x[0-9]*" | head -n1)

# Get the width and height of the resolution
WIDTH=$(echo $RESOLUTION | cut -d 'x' -f 1)
HEIGHT=$(echo $RESOLUTION | cut -d 'x' -f 2)

# Move all windows to the built-in display
for win in $(wmctrl -l | awk '{print $1}'); do
    wmctrl -i -r $win -e 0,0,0,$WIDTH,$HEIGHT
done
