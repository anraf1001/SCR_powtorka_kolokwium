#!/bin/bash

ls | grep "./*.$2" | while read line; do
	echo "$1" >> $line
done
