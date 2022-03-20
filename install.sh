#!/bin/bash

mkinstall() {
	#eval "dd if=$3 of=$1 bs=4k" 
	
	declare -i i=1
	file=()
	echo "Select device:\n"
	for $f in $1*; do
		echo "$i) $f"
		i=$i+1
		file+=$f
	done
	echo "\n"
	read 
	
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
