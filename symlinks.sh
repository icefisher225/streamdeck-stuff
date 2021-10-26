#!/bin/zsh


DIR=$(dirname "$0")

if [ ! -d "$DIR/symlinks" ]; then
	mkdir "$DIR/symlinks"
fi

for i in "$@"
do
	echo $i
	var=$(find /Applications -maxdepth 3  -iname "*$i*.app") 
	echo $var
	ln -s $var $DIR/symlinks
	unset var
done
