#!/bin/bash

mv $1 ${1^^}
cd ${1^^}

if [[ $( ls | wc -l ) -ge 1 ]]; then
	ls | while read line; do
		if [[ -d $line ]]; then
			~/$0 $line
		fi
	done
fi
