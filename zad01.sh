#!/bin/bash

if [[ ! -d $1 ]]; then
    echo "❌ Not a directory"
    exit 1
fi

find "$1" -type f -mtime -7 -name '*.sh' | while read line; do
	chmod +x $line
done
