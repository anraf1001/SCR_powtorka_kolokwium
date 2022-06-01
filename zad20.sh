#!/bin/bash

if [[ -e "id.txt" ]]; then
    if [[ -f "id.txt" ]]; then
	    rm id.txt
    else
	    rm -r id.txt
    fi
fi

touch "id.txt"

for i in {1..10}; do
	uuid | sort >> id.txt
done
