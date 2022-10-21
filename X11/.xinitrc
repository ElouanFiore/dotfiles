#!/bin/sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
feh --bg-scale ~/pics/Wallpapers/Orange.png
exec /bin/i3
