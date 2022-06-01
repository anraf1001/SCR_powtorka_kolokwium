#!/bin/bash

for ext in $*; do
	cum_size=0
	for size in $( ls -l |egrep "./*.$ext" | tr -s ' ' | cut -d ' ' -f 5 ); do
		cum_size=$(( $cum_size + $size ))
	done

	echo "$ext: $cum_size"
done
