#!/bin/bash

for file in $*; do
	cat "$file" | while read line; do
	    echo "$file: $line"
	done
done
