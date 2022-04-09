#!/bin/sh

## Qn
## if x/y display X/Y.
read a
if [ $a = 'Y' -o $a = 'y' ]; then
    echo "YES"
else
    echo "NO"
fi