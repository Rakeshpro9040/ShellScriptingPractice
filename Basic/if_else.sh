#!/bin/sh

a=10
b=20

if [ $a = $b ]; then
    echo "a is equal to b"
elif [ $a -gt $b ]; then
    echo "a is gt b"
else
    echo "a is not equal b"
fi