#!/bin/sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
picom --fade-delta=3 -b
feh --bg-scale ~/Imgs/Wallpapers/Orange.png
exec /bin/i3
