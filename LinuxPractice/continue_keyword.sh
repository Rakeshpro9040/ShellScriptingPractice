#!/bin/sh

NUMS="1 2 3 4 5 6 7"
for NUM in $NUMS; do
    Q=$(expr $NUM % 2)
    if [ $Q -eq 0 ]; then
        echo "$NUM is an even number!"
        continue
        echo "I am unreachable!"
    fi
done

# Output
: '
2 is an even number!
4 is an even number!
6 is an even number!
'
