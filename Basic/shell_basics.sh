#!/bin/bash

# Author : Rakesh

# Clear Output
clear

############# Scalar Variables #############

# Read and Print
# echo 'what is your name?'
# read -r PERSON
# echo "Hello, $PERSON"

# Accessing Values
# NAME="Rakesh Panigrahi"
# echo "$NAME"

# Read-only Variables
# NAME="Rakesh Panigrahi"
# readonly NAME
# NAME="Mod"
# Output: line 12: NAME: readonly variable

# Unsetting Variables
# NAME="Rakesh Panigrahi"
# echo "Name: $NAME"
# unset NAME
# echo "Name: $NAME"

# Command-Line Arguments
# echo "File Name: $0"
# echo "First Parameter : $1"
# echo "Second Parameter : $2"
# echo "Quoted Values: $*"
# echo "Quoted Values: $@"
# echo "Total Number of Parameters : $#"
# Test: ./shell_basics.sh Rakesh Panigrahi

# Special Parameters $* and $@
# for TOKEN in "$@"; do
#     echo "$TOKEN"
# done
# for TOKEN in $*; do
#     echo "$TOKEN"
# done
# Test: ./shell_basics.sh Rakesh Panigrahi 26 Years Old
# Test: ./shell_basics.sh "Rakesh Panigrahi 26 Years Old"

# Exit Status
# pwd
# cat test1.txt
# echo $?
# cat test.txt
# echo $?
# Test: ./shell_basics.sh

###########################################

############# Array Varaibles #############

# Defining Array Values
# single item Initialize
NAME[0]='Rakesh'
NAME[1]='Roshan'
NAME[2]='Panigrahi'

# multiple items Initialize
NAME_N=('Rakesh' 'Roshan' 'Panigrahi')

# Accessing Array Values
# single item
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

echo "First Index: ${NAME_N[0]}"
echo "Second Index: ${NAME_N[1]}"

# multiple items
echo "NAME: ${NAME[*]}"
echo "NAME_N: ${NAME_N[@]}"
echo $?
# Test: ./shell_basics.sh

###########################################
