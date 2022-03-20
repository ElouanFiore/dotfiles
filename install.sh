#!/bin/bash

mkinstall() {
	#dd if=$3 of=$1
	dev=$(eval "ls $1*" | fzf)
	eval "cp -v ~/.dotfiles/install.sh $dev"
	eval "cp -v ~/.ssh/github_key $dev"
}

if [ $# -eq 3 ]; then
	if [ $2 == "-i" ]; then
		mkinstall
	fi
elif [ $# -eq 1 ]; then
	#install()
else
	echo "Bad usage"	
fi
