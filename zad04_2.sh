#!/bin/bash

ifconfig | egrep 'ether' | tr -s ' ' | cut -d ' ' -f 3
