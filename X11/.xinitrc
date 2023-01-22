#!/bin/sh

eval $(/usr/bin/ssh-agent)
/usr/bin/feh --bg-scale ~/pics/Wallpapers/Orange.png
/usr/bin/xss-lock -- /bin/i3lock -n -i ~/pics/Wallpapers/altered-carbon.png &
/usr/bin/dunst &
/usr/bin/xrdb -merge ~/.dotfiles/X11/Xressources.xterm
exec /bin/i3
