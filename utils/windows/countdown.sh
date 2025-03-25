#!/bin/bash
# 

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <time> [s|m]"
    echo "  <time>: Number of seconds or minutes for the countdown."
    echo "  [s|m]: Optional. 's' for seconds (default), 'm' for minutes."
    exit 1
fi

# Read the time and unit
time=$1
unit=${2:-s}  # Default unit is seconds (s)

# Convert minutes to seconds if necessary
if [ "$unit" == "m" ]; then
    time=$((time * 60))
elif [ "$unit" != "s" ]; then
    echo "Invalid unit. Use 's' for seconds or 'm' for minutes."
    exit 1
fi

# Function to print the countdown
countdown() {
    local seconds=$1
    while [ $seconds -gt 0 ]; do
        # Convert seconds to mm:ss format
        mins=$((seconds / 60))
        secs=$((seconds % 60))
        printf "\rTime remaining: %02d:%02d" $mins $secs

        sleep 1
        seconds=$((seconds - 1))
    done
    echo -e "\nTime's up!"
}

# Run the countdown
countdown $time

# Play the beep using PowerShell
powershell.exe -c "[console]::beep(800, 500)"
