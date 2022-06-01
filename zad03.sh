#!/bin/bash

cat /var/log/kern.log | egrep 'USB' | tail -n 3
