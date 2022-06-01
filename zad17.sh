#!/bin/bash

ls $1 | while read line; do
	char_cnt=`cat $line | wc -c`
	mv "$1/$line" "$1/$char_cnt.txt"
done
