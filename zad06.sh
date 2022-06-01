#!/bin/bash

ls | grep "./*.sh" | while read line; do
    report=$(cat "raport.txt" | grep "$line")
    lhs=$(echo "$report" | cut -d ' ' -f 1)
	rhs=$(md5sum "$line" | tr -s ' ' | cut -d ' ' -f 1)

    if [[ $lhs != $rhs ]]; then
        file=$(echo "$report" | cut -d ' ' -f 2)
        echo "Something is fucky in: $file"
    fi

done
