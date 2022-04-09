#!/bin/sh

# Numeric Relational Operators
a=6
b=5
if [ $a -ge $b ]; then
    echo 'a is greater than b'
fi

# String Relational Operators
str1='ABC'
str2='abc'
if [ $str1 != $str2 ]; then
    echo 'a is not equal to b'
fi

# Output
: '
a is greater than b
a is not equal to b
'
