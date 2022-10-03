#
# ~/.bash_profile
#

export DOCKER_BUILDKIT=1

if [ -z "$DISPLAY" ] && [ "$XDG_SESSION_TYPE$XDG_VTNR" = "tty1" ]; then
	exec startx > ~/lastX.log 2>&1
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
