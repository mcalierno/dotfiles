#!/usr/bin/env bash

# The application's window class (used for focusing) and the command to execute (if not running).
app_class=$1
app_exec=$2

# Check if a window with the given class exists
window_id=$(hyprctl clients | grep "class: ${app_class}" | head -n 1 | awk '{print $NF}')

if [ -n "$window_id" ]; then
    # Window exists, so focus it
    hyprctl dispatch focuswindow "class:${app_class}"
else
    # Window does not exist, so launch the application
    eval "${app_exec}"
fi
