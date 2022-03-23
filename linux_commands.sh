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
# password will stored in /etc/shadow
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
# Here in the first column, the first character denotes
#        whether a file is a normal file or mkdir "directory name"
#        file is denoted by -
#        directory is denoted by d.
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

## Home Directory
# To determine where you are within the filesystem hierarchy at any time
# pwd

## Here ~ indicates the home directory.
# cd ~
# pwd

## Other user's home directory
# cd ~username

## To go in your last directory
# cd -
# pwd

## . and ..
# The filename . (dot) represents the current working directory
# cd .
# pwd
# The filename .. (dot dot) represents the directory one level above the current working directory, 
#       often referred to as the parent directory.
# cd ../..
# pwd

## Absolute/Relative Pathnames
# Absolute
# cd /home/rakesh/Desktop/GitHub/ShellScriptingPractice/Basic
# pwd

# Relative
# cd Basic
# pwd

## Listing Directories
# ls Basic

## Creating Directories
# mkdir test_dir1

## Creating Parent Directories
# Sometimes when you want to create a directory, its parent directory or directories might not exist.
# The below command creates all the required parent directories.
# mkdir -p /home/rakesh/Desktop/GitHub/ShellScriptingPractice/test_dir2/test_dir3

## Removing Directories
# rmdir test_dir1
# rmdir -r /full-path: To remove an non-empty table (remove recursively)
# rmdir -rf /full-path: To remove an non-empty table (remove recursively & forecfully)

## Renaming Directories
# mv olddir newdir


###########################################

###### File Permission / Access Modes #####

## Changing Permissions
# To change the file or the directory permissions, you use the chmod (change mode) command.
# u - user/file's owner
# g - group
# o - other

# Using chmod in Symbolic Mode
# + Adds the designated permission(s) to a file or directory.
# - Removes the designated permission(s) from a file or directory.
# = Sets the designated permission(s).
# The below command will add execute permission to owner
# chmod u+x test.txt
# chmod u=rwx test.txt
# The below command will add execute permission to group
# chmod g+x test.txt
# The below command will add execute permission to other
# chmod o+x test.txt
# The below command will give combine execute access 
# chmod u+x,g+x,o+x test.txt
# chmod +x test.txt
# The below command will remove execute permission from all
# chmod -x test.txt

# Using chmod with Absolute Permissions
# 4 (read)
# 2 (write)
# 1 (execute)
# 0	= --- = No permissions
# 7	= rwx = All permissions
# The below command will set -rwxrwxr-x
# chmod 775 test.txt
# The below command will set -rw-rw-r--
# chmod 664 test.txt

## Changing Owners and Groups
# Changing Ownership
# chown − The chown command stands for "change owner" and is used to change the owner of a file.
# The value of the user can be either the name of a user on the system or the user id (uid) of a user on the system.
# sudo chown user filelist
# sudo chown root test.txt

# Changing Group Ownership
# chgrp − The chgrp command stands for "change group" and is used to change the group of a file.
# The value of group can be the name of a group on the system or the group ID (GID) of a group on the system.
# chgrp group filelist
# sudo chgrp root test.txt
# sudo chgrp rakesh test.txt

## SUID and SGID File Permission
# s and S are called as "Sticky bit"
# The SUID and SGID bits will appear as the letter "s" if the permission is available. 
# A capital letter S in the execute position instead of a lowercase s indicates that the execute bit is not set.
# The SUID "s" bit will be located in the permission bits where the owners' execute permission normally resides.
# The SGID "s" bit will be located in the permission bits where the groups' execute permission normally resides.
# ls -l /usr/bin/passwd
# Output: -rwsr-xr-x 1 root root 68208 Jul 15 03:38 /usr/bin/passwd

# If the sticky bit is enabled on the directory, files can only be removed
#   if you are - The owner of the sticky directory/
#   The owner of the file being removed/
#   The super user, root
# To set the SUID and SGID bits for any directory
# chmod ug+s dirname

###########################################

############### Environment ###############



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

## Change user
# su username
# su rakesh

# Change to root user
# sudo -su

## Run a command using root access
# sudo command_name

###########################################