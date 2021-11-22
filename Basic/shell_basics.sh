#!/bin/bash

# Author : Rakesh

# Clear Output
clear

# Global Variables
test_file='/home/mylocallinux/GitHub/ShellScriptingPractice/Basic/test.txt'

############# Dummy Chapter #############

## Dummy Heading
# Dummy Sub-Heading

# Test:
# Output:

###########################################

############# Scalar Variables #############

## Read and Print
# echo 'what is your name?'
# read -r PERSON
# echo "Hello, $PERSON"

## Accessing Values
# NAME="Rakesh Panigrahi"
# echo "$NAME"

## Read-only Variables
# NAME="Rakesh Panigrahi"
# readonly NAME
# NAME="Mod"
# Output: line 12: NAME: readonly variable

## Unsetting Variables
# NAME="Rakesh Panigrahi"
# echo "Name: $NAME"
# unset NAME
# echo "Name: $NAME"

## Command-Line Arguments
# echo "File Name: $0"
# echo "First Parameter : $1"
# echo "Second Parameter : $2"
# echo "Quoted Values: $*"
# echo "Quoted Values: $@"
# echo "Total Number of Parameters : $#"
# Test: ./shell_basics.sh Rakesh Panigrahi

## Special Parameters $* and $@
# for TOKEN in "$@"; do
#     echo "$TOKEN"
# done
# for TOKEN in $*; do
#     echo "$TOKEN"
# done
# Test: ./shell_basics.sh Rakesh Panigrahi 26 Years Old
# Test: ./shell_basics.sh "Rakesh Panigrahi 26 Years Old"

## Exit Status
# pwd
# cat test1.txt
# echo $?
# cat test.txt
# echo $?
# Test: ./shell_basics.sh

###########################################

############# Array Varaibles #############

## Defining Array Values
# single item Initialize
# NAME[0]='Rakesh'
# NAME[1]='Roshan'
# NAME[2]='Panigrahi'

# multiple items Initialize
# NAME_N=('Rakesh' 'Roshan' 'Panigrahi')

## Accessing Array Values
# single item
# echo "First Index: ${NAME[0]}"
# echo "Second Index: ${NAME[1]}"

# echo "First Index: ${NAME_N[0]}"
# echo "Second Index: ${NAME_N[1]}"

# multiple items
# echo "NAME: ${NAME[*]}"
# echo "NAME_N: ${NAME_N[@]}"
# echo $?
# Test: ./shell_basics.sh

###########################################

############# Basic Operators #############

## Arithmetic Operators
# expr
# legacy
val=`expr 2 + 2`
echo "Total value : $val"

# new
val=$(expr 2 + 2)
echo "Total value : $val"

val=$((2 + 2))
echo "Total value : $val"

# conditional (Comparison)
a=5
b=5
if [ $a == $b ]; then
    echo 'a is equal to b'
fi

## Relational Operators
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

## Boolean Operators
# method-1
if [ $a -ge $b -a $str1 != $str2 ]; then
    echo 'both the conditions statisfied.'
fi

# method-2
if [ $a -ge $b ] && [ $str1 != $str2 ]; then
    echo 'both the conditions statisfied.'
fi

## String Operators
str1=''
if [[ -z $str1 ]]; then
    echo 'str1 is zero in size'
fi

str1='ABC'
if [[ -n $str1 ]]; then
    echo 'str1 is non-zero in size'
fi

## File Test Operators
cat $test_file
if [ -e $test_file ]
then
    echo "File exists"
else
    echo "File does not exist"
fi

if [ -s $test_file ]
then
    echo "File size is not zero"
else
    echo "File size is zero"
fi

if [ -x $test_file ]
then
    echo "File has execute permission"
else
    echo "File does not have execute permission"
fi

if [ -d $test_file ]
then
    echo "File is a directory"
else
    echo "This is not a directory"
fi

# Test: ./shell_basics.sh

###########################################