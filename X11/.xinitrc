#!/bin/sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
feh --bg-scale ~/pics/Wallpapers/Orange.png
xss-lock -- /bin/i3lock -n -i ~/pics/Wallpapers/altered-carbon.png &
exec /bin/i3
