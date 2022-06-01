#!/bin/bash

count=1
for file in $*; do
	line_count=$( cat $file | wc -l )
	if [[ $line_count -ge $count ]]; then
		cat "$file" | tail -n $count | head -n 1
	else
		echo "$file is too short"
	fi

	(( count ++ ))
done
