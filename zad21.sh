#!/bin/bash

read index

function fibonacci() {
	if [[ $1 -lt 3 ]]; then
		echo 1
	else
		prev1=$( fibonacci $(( $1 - 1 )) )
		prev2=$( fibonacci $(( $1 - 2 )) )
		result=$(( prev1 + prev2 ))
		echo $result
	fi
}

fibonacci $index
