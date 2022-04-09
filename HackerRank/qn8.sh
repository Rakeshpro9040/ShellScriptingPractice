#!/bin/sh

## Qn
## Arithmatic result for "5+50*3/20 + (19*2)/7" after decimal 3 didgit
read string
res=$(echo "$string" | bc -l)
printf "%.3f" "$res"