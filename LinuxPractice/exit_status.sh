#!/bin/sh

pwd
cat test1.txt
echo $?
cat test.txt
echo $?

# Output
: '
cat: test1.txt: No such file or directory
1
First foo.
Second line.
Third line.
Fourth line.
Fifth line.
Sixth foo.
Seventh foo.

10th line.
1st line.
2nd line.
11th line.
0
'
