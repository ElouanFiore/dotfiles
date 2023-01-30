#!/bin/sh

export COLOR_SCHEME=orange

eval $(ssh-agent)
/usr/bin/dunst &

/usr/bin/xrdb -merge ~/.dotfiles/X11/Xressources.xterm
/usr/bin/xrdb -merge ~/.dotfiles/X11/Xressources.$COLOR_SCHEME

/usr/bin/feh --bg-scale ~/pics/Wallpapers/$COLOR_SCHEME.png
/usr/bin/xss-lock -- /bin/i3lock -n -i ~/pics/Wallpapers/altered-carbon.png &

exec /bin/i3
