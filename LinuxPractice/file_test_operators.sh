#!/bin/sh

# File exists or not
cat $test_file
if [ -e $test_file ]
then
    echo "File exists"
else
    echo "File does not exist"
fi

# File empty or not
if [ -s $test_file ]
then
    echo "File size is not zero"
else
    echo "File size is zero"
fi

# File executable or not
if [ -x $test_file ]
then
    echo "File has execute permission"
else
    echo "File does not have execute permission"
fi

# File is a directory or not
if [ -d $test_file ]
then
    echo "File is a directory"
else
    echo "This is not a directory"
fi

# Output
: '

'
