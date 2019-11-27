#!/bin/bash

# run this in display 0 aka the monitor
export DISPLAY=:0.0
xset -dpms
xset s off
xset s noblank

# turn off certain hot keys that allow one to escape chromium/open terminal etc
xmodmap -e "keycode 37 = "
xmodmap -e "keycode 105 = "
xmodmap -e "keycode 133 = "
xmodmap -e "keycode 134 = "
xmodmap -e "keycode 67 = "

# make the mouse hidden
unclutter &

chromium-browser --user-data-dir=/home/{{autostart_user}}/screen1 --kiosk --window-position=0,0 --app="{{url1}}" &
chromium-browser --user-data-dir=/home/{{autostart_user}}/screen2 --kiosk --window-position=2560,0 --app="{{url2}}" &

