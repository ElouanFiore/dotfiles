#
# ~/.bash_profile
#

if [ -z "$DISPLAY" ] && [ "$XDG_SESSION_TYPE$XDG_VTNR" = "tty1" ]; then
	exec startx > /dev/null 2>&1
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
