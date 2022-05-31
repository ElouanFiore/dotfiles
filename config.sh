#!/bin/sh
round=1
pass=no

for word in $(cat ~/.dotfiles/files.txt); do
	if [ $word == "#" ]; then
		pass=yes
		round=2
	elif [[ $pass == "no" && $round == "1" ]]; then
		dst="~/$word"
		round=2
	elif [[ $pass == "no" && $round == "2" ]]; then
		src=$word
		echo "$src && $dst"
		eval "ln -sf ~/.dotfiles/$src $dst"
		round=1
	elif [[ $pass == "yes" && $round == "2" ]]; then
		echo "#### $word ####"
		round=1
		pass=no
	fi
done
