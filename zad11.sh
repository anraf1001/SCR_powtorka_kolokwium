#!/bin/bash

path=~/picture_backup

if [[ -e $path ]]; then
    if [[ -d $path ]]; then
        rm -r $path
    else
	    rm $path
    fi
fi

mkdir $path

ls | egrep "./*.png" | while read file; do
	cp ./$file $path/$file
	chmod =r $path/$file
done
