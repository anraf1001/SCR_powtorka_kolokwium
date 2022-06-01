#!/bin/bash

cat trees.txt | tail -n +2 | grep "chronione" | grep "brzoza" | sort -nr -t ',' -k 3 | cut -d ',' -f 3 | head -n 2 > output.txt
