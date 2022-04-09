#!/bin/sh

# Check empty string
str1=''
if [[ -z $str1 ]]; then
    echo 'str1 is zero in size'
fi

# Check non-empty string
str1='ABC'
if [[ -n $str1 ]]; then
    echo 'str1 is non-zero in size'
fi

# Output
: '

'
