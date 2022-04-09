#!/bin/sh

## Declare Array
# single item Initialize
NAME[0]='Rakesh'
NAME[1]='Roshan'
NAME[2]='Panigrahi'

# multiple items Initialize
NAME_N=('Rakesh' 'Roshan' 'Panigrahi')

## Access Array
# single item
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
echo "First Index: ${NAME_N[0]}"
echo "Second Index: ${NAME_N[1]}"

# multiple items
echo "NAME: ${NAME[*]}"
# echo "NAME_N: ${NAME_N[@]}"
echo $?

# Output
: '

'
