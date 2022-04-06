#!/bin/bash

mkinstall() {
	# Unmount all device's partions
	for p in $device?; do
		eval "sudo umount $p"
	done

	# Writing ISO in device
	eval "sudo dd if=$iso of=$device bs=2M status=progress" 
	
	# Print device's partitions
	eval "sudo fdisk -l $device"	
	for p in $device?; do 
		parts+=($p)
	done
	read -p "Select partition : "
	((c=$REPLY-1)); part=${parts[$c]}
	
	#Copy key and install script for second part
	eval "mkdir /tmp/ins && sudo mount $part /tmp/ins"
	eval "cp -v ~/.dotfiles/install.sh /tmp/ins"
	eval "cp -v ~/.ssh/git_key /tmp/ins"
	
	# Clearing
	eval "umount $part"	
	unset c p part parts
}

if [ $# -eq 3 ]; then
	if [ $2 == "-i" ]; then
		device=$1
		iso=$3
		mkinstall
	fi
elif [ $# -eq 1 ]; then
	echo "test"
fi
