#!/bin/sh

a=0
while [ "$a" -lt 10 ]; do # this is loop1
    b="$a"
    while [ "$b" -ge 0 ]; do # this is loop2
        echo -n "$b "
        b=$((b - 1))
    done
    echo # new line
    a=$((a + 1))
done

# Output
: '
0
1 0
2 1 0
3 2 1 0
4 3 2 1 0
5 4 3 2 1 0
6 5 4 3 2 1 0
7 6 5 4 3 2 1 0
8 7 6 5 4 3 2 1 0
9 8 7 6 5 4 3 2 1 0
'
