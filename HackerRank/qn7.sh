#!/bin/sh

## Qn
## Check if X, Y, & Z are equal or not.
read X
read Y
read Z
if [ $X = $Y -a $X = $Z ]; then
    echo "EQUILATERAL"
elif [ $X = $Y -o $X = $Z -o $Y = $Z ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi