#!/bin/sh

# method-1
if [ $a -ge $b -a $str1 != $str2 ]; then
    echo 'both the conditions statisfied.'
fi

# method-2
if [ $a -ge $b ] && [ $str1 != $str2 ]; then
    echo 'both the conditions statisfied.'
fi

# Output
: '
both the conditions statisfied.
both the conditions statisfied.
'
