#!/bin/bash

diff "$1" "$2" > /dev/null

if [[ $? != 0 ]]; then
    lin_cnt_1=$( cat $1 | wc -l )
    lin_cnt_2=$( cat $2 | wc -l )

    if [[ $lin_cnt_1 -gt $lin_cnt_2 ]]; then
		echo "$1 ma więcej linii"
	elif [[ $lin_cnt_1 -lt $lin_cnt_2 ]]; then
		echo "$2 ma więcej linii"
	else
		echo "Pliki mają tyle samo linii"
	fi
else
    echo "Pliki jednakowe"
fi
