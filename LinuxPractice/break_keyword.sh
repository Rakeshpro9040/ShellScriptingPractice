#!/bin/sh

a=0
while [ $a -lt 10 ]; do
    echo $a
    if [ $a -eq 5 ]; then
        break
    fi
    a=$(expr $a + 1)
done

# Output
: '
0
1
2
3
4
5
'
