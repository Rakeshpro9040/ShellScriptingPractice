#!/bin/sh

################ About/Setup ##############

## Author : Rakesh

## Clear Output
clear

###########################################

############# Dummy Chapter #############

## Dummy Heading
# Dummy Sub-Heading

###########################################

############# Getting Started #############
## Change Password
# passwd

## Show Date and Time
# date

## To check calendar
# cal

## To view used RAM 
# free -m

## Who am I?
# whoami

## Who is Logged in?
# users
# who

## Logging Out
# logout

## System Shutdown
# You typically need to be the super user or root
# halt
# poweroff
# reboot
# shutdown

###########################################

############# File Management #############

## Listing Files
# To list the files and directories stored in the current directory
# ls

# ls supports the -l option which would help you to get more information about the listed files
# ls -l

## Metacharacters
# We use * to match 0 or more characters, a question mark (?) matches with a single character.
# ls *.md

## Hidden Files
# Invisible file - first character of which is the dot or the period character (.)
# Single dot (.) − This represents the current directory
# Double dot (..) − This represents the parent directory
# ls -a

## Creating Files
# Using vi editor
#       Press the key i to come into the edit mode.
#       Press the key esc to come out of the edit mode, and move into command mode.
#       Press two keys Shift + ZZ together to come out of the file completely.
#       Follow this link for more exit commands: https://phoenixnap.com/kb/how-to-exit-vim
# vi test_file1

## Editing Files
# Using vi editor
#       Can't move cursor in edit mode. Switch to esc mode.
#       Press l h k j to move cursor in esc mode.
#       Press the key dd to delete a line in esc mode.

## Display Content of a File
# Using cat command
# cat test_file1

# You can display the line numbers by using the -b option
# cat -b test_file1

## Counting Words in a File
# wc test_file1

# Multiple files
# wc test*

## Copying Files
# cp source_file destination_file
# cp is like copy and paste
# cp test_file1 test_file2

# Copy file with no change in mode,ownership,timestamp --preserve option
# cp -p test_file1 test_file3

## Renaming Files
# mv old_file new_file
# mv is like cut and paste
# mv test_file2 test_file4

## Deleting Files
# rm test_file4

# Forcefully remove a File: https://www.geeksforgeeks.org/rm-rf-command-in-linux-with-examples/
# rm -f test_file4

# Remove a folder recursively including its content (subdirectories and files)
# rem -r test_folder


###########################################

########## Directory Management ###########




###########################################

#################### Misc #################

## Get the Manual for a command
# Below command will display all the options available for cp command.
# man cp

## Get the Help doc
# cp --help

## Show version of an app
# cp --version

## Show memory usuage
# free -m

## Reset Ubuntu
# dconf reset -f /

## To open VS code from current folder
# code .(dot)

## To navigate into the root directory
# cd /

## To navigate to your home directory
# cd
# cd ~

## To navigate up one directory level
# cd ..

## To navigate to the previous directory (or back)
# cd -

## Suspend a process
# Ctrl+Z suspends the process with SIGTSTP, you can resume it later
#       Here you will see output as "Stopped".
# Ctrl+C kills the process with SIGINT, which terminates the process unless it is handled/ignored by the target.
#       Here you will see ouput as "Killed".
# Test these using: Infinite while loop: https://bash.cyberciti.biz/guide/Infinite_while_loop
# Test: ./shell_basics.sh

## View Running processes
# The below command will return pid and ppid
# ps -ef

# Filter out a particular process/program
#       Here ignore the --color=auto option
# ps -ef | grep Infinite*

## Kill a running process
# kill pid

# Force kill
# kill -9 pid

## Storage Analysis
# Analyze Drive/Mount Storage: https://www.cyberciti.biz/faq/linux-check-disk-space-command/
# In the below command -h will display the memory in Bytes instead of blocks
# df -h --output=source,used,avail,pcent

# Analyze Folder Storage
# du -h ~/Desktop/GitHub/ShellScriptingPractice/Basic/ 

## Search Files and Folders
# Recursively find all files in current and subfolders
# https://stackoverflow.com/questions/5905054/how-can-i-recursively-find-all-files-in-current-and-subfolders-based-on-wildcard
# find . -name "test*"

# Find Contents inside a file (Recursively)
# Using grep
#       Using awk command also we can do the same thing.
# In the below command r means recurrsive, i to ignore case, l to print mathcing lines 
# grep -irl "is a test file"

###########################################