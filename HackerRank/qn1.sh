#!/bin/sh

## Your task is to use for loops to display only odd natural numbers from 1 to 99.
## Step-1: Print 1 to 100
## Ref: https://www.log2base2.com/shell-script-examples/loop/shell-script-to-print-numbers-from-1-to-100.html
# for((i=1;i<=100;i++))
# do
#     echo $i
# done

## Step-2: Filter only odd numbers
for((i=1;i<=100;i++))
do
    if [ $(($i % 2)) -ne 0 ]; then
        echo $i
    fi
done