#!/bin/bash

ret=0

for file in $*; do
	ret=$(( ret + $( cat $file | wc -c ) ))
done

echo $ret
