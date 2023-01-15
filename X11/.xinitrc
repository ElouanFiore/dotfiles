#!/bin/sh

eval $(ssh-agent)
feh --bg-scale ~/pics/Wallpapers/Orange.png
xss-lock -- /bin/i3lock -n -i ~/pics/Wallpapers/altered-carbon.png &
dunst &
exec /bin/i3
