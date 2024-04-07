#
# ~/.bash_profile
#

export DOCKER_BUILDKIT=1
eval $(ssh-agent)

if [[ $(/sbin/tty) == "/dev/tty2" ]]; then
	export COLOR_SCHEME=orange
	/usr/bin/xrdb -merge ~/.dotfiles/X11/Xressources.$COLOR_SCHEME
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
