#!/bin/sh

echo "############## Linking dotfiles ##############"
for line in $(cat ~/.dotfiles/files.txt); do
	dst=$(echo $line | cut -d ";" -f 1)
	src=$(echo $line | cut -d ";" -f 2)
	echo "Linking $src..."
	eval "ln -sf ~/.dotfiles/$src $dst"
done
