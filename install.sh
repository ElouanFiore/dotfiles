#!/bin/bash

mkinstall() {
	# Writing ISO $3 in device $1
	eval "dd if=$3 of=$1 bs=4k" 
	
	# Print device's partitions 
	for p in /dev/sda?; do 
			((c+=1))
			parts+=($p)
			echo "$c) $p"
	done
	read -p "Select partition : "
	((c=$REPLY-1)); part=${parts[$c]}
	
	#Copy key and install script for second part
	eval "cp -v ~/.dotfiles/install.sh $part"
	eval "cp -v ~/.ssh/git_key $part"
	
	unset c p part parts
}

if [ $# -eq 3 ]; then
	if [ $2 == "-i" ]; then
		mkinstall
	fi
elif [ $# -eq 1 ]; then
	#install
else
	echo "Bad usage"	
fi
