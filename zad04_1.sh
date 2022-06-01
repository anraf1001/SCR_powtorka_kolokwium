#!/bin/bash

ifconfig | grep 'RX packets' | tr -s ' ' | cut -d ' ' -f 6 | sort -nr | head -n 1
