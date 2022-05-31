#!/bin/sh

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
exec /bin/i3
