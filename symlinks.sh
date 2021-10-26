#!/bin/zsh


DIR=$(dirname "$0")

if test "$#" -eq 0; then
	echo "Usage is symlinks.sh <app1> <app2> <app3>, etc etc."
	exit 1
fi


if [ ! -d "$DIR/symlinks" ]; then
	mkdir "$DIR/symlinks"
fi

for i in "$@"
do
	var=$(find /Applications /System/Applications -maxdepth 3  -iname "*$i*.app") 
	ln -s $var $DIR/symlinks
	unset var
done
