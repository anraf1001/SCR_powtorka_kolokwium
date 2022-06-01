#!/bin/bash

while [[ -n "$1" ]]; do
	chmod $2 $1
	shift
	shift
done
