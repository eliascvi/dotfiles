#!/bin/bash
picom --experimental-backends --config $HOME/.config/bspwm/picom.conf &
#run ~/scripts/randomwall.sh &
wal -R &
dwmbar &
gammy &
numlockx on &
run pamac-tray &
exec dwm
