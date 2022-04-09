#!/bin/sh

## expr
# legacy
val=`expr 2 + 2`
echo "Total value : $val"

# old
val=$(expr 2 + 2)
echo "Total value : $val"

# latest
val=$((2 + 2))
echo "Total value : $val"

## conditional (Comparison)
a=5
b=5
if [ $a == $b ]; then
    echo 'a is equal to b'
fi

# Output
: '
Total value : 4
Total value : 4
Total value : 4
a is equal to b
'
