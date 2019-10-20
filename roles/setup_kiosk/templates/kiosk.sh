#!/bin/bash

# run this in display 0 aka the monitor
export DISPLAY=:0
xset -dpms
xset s off
xset s noblank

unclutter &

chromium-browser --user-data-dir=/home/{{autostart_user}}/screen1 --kiosk --window-position=0,0 --app="{{url1}}" &
chromium-browser --user-data-dir=/home/{{autostart_user}}/screen2 --kiosk --window-position=2560,0 --app="{{url2}}" &

