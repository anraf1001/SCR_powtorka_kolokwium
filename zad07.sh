#!/bin/bash

if [[ ! -f $1 ]];then
    echo "❌ $1 is not a file"
    exit 1
fi

cat $1 | tail -n +2 | tr -s ' ' | sort -nr -t ' ' -k 4 | head -n 3 | cut -d ' ' -f 1
