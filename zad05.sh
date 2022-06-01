#!/bin/bash

file="raport.txt"

if [[ -e $file ]]; then
    rm "$file"
fi

touch "$file"

ls | grep "./*.txt" | while read line; do
    md5sum "$line" | tr -s ' ' >> $file
done
