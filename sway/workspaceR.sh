#!/bin/bash

current_workspace=$(($(swaymsg -t get_workspaces | grep -C 8 '"focused": true' | tr , '\n' | grep '"num":' | cut -d : -f 2))) 
swaymsg workspace $((current_workspace+1))
