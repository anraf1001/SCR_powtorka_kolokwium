#!/bin/bash

while : ; do
	read text
	if [[ "$text" == EXIT ]]; then
		break
	else
		pid=`echo "$text" | tr -s ' ' | cut -d ' ' -f1`
		sig=`echo "$text" | tr -s ' ' | cut -d ' ' -f2`
		kill -$sig $pid
	fi
done
