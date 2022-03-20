#!/bin/sh

## Qn
## Your task is to use for loops to display only odd natural numbers from 1 to 99.
## Step-1: Print 1 to 100
## Ref: https://www.log2base2.com/shell-script-examples/loop/shell-script-to-print-numbers-from-1-to-100.html
# for((i=1;i<=100;i++))
# do
#     echo $i
# done

## Step-2: Filter only odd numbers
# for((i=1;i<=100;i++))
# do
#     if [ $(($i % 2)) -ne 0 ]; then
#         echo $i
#     fi
# done

## Qn
## Write a Bash script which accepts name as input and displays the greeting "Welcome (name)".
# read NAME
# echo "Welcome $NAME"

## Qn
## Use a for loop to display the natural numbers from 1 to 50.
# for((i=1;i<=50;i++))
# do
#     echo $i
# done

## Qn
## Given two integers, X and Y, find their sum, difference, product, and quotient.
# read X
# read Y
# echo $((X + Y))
# echo $((X - Y))
# echo $((X * Y))
# echo $((X / Y))

## Qn
## Given two integers, Check their equality.
# read X
# read Y
# if [ $X -eq $Y ]; then
#     echo "X is equal to Y"
# elif [ $X -gt $Y ]; then
#     echo "X is greater than Y"
# else
#     echo "X is less than Y"
# fi

## Qn
## if x/y display X/Y.
# read a
# if [ $a = 'Y' -o $a = 'y' ]; then
#     echo "YES"
# else
#     echo "NO"
# fi

## Qn
## Check if X, Y, & Z are equal or not.
# read X
# read Y
# read Z
# if [ $X = $Y -a $X = $Z ]; then
#     echo "EQUILATERAL"
# elif [ $X = $Y -o $X = $Z -o $Y = $Z ]; then
#     echo "ISOSCELES"
# else
#     echo "SCALENE"
# fi

## Qn
## Arithmatic result for "5+50*3/20 + (19*2)/7" after decimal 3 didgit
read string
res=$(echo "$string" | bc -l)
printf "%.3f" "$res"