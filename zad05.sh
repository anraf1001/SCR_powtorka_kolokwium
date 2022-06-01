#!/bin/bash

file="raport.txt"

if [[ -e $file ]]; then
    rm "$file"
fi

touch "$file"

ls | grep "./*.sh" | while read line; do
    md5sum "$line" | tr -s ' ' >> $file
done
