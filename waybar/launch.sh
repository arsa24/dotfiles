#!/bin/sh

killall waybar

waybar -c ~/.config/waybar/conf.jsonc & -s ~/.config/waybar/style.css
