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

# PS1='[\W] $': This will change the Shell Prompt to show the "[working_dir]$" from "$"
# To find more options for PS1 refer to the tutorialspoint doc.
# PS2='~': This will change the New Line Prompt to '~' from '>'
# echo $PATH: Indicates the search path for commands. It is a colon-separated list of directories in which the shell looks for commands.
# echo $HOME: Home directory
# echo $TERM: Refers to the display type.
# echo $RANDOM: Generates a random integer between 0 and 32,767 each time it is referenced.
# echo $SHLVL: Increments by one each time an instance of bash is started. This variable is useful for determining whether the built-in exit command ends the current session.
# echo $LANG: LANG expands to the default system locale. Ex: en_US.UTF-8
# echo $TZ: Refers to Time zone. It can take values like GMT, AST, etc.
# echo $UID: Expands to the numeric user ID of the current user, initialized at the shell startup.

###########################################

############### Basic Utilities - Printing, Email ###############

## Printing File
# pr option(s) filename(s): To display report before print (Refer to tehe doc)
# lp or lpr: prints a file onto paper as opposed to the screen display (Refer to tehe doc)

## Sending Email
# mail: Too check incoming mails
# mail [-s subject] [-c cc-addr] [-b bcc-addr] to-addr: To send and receive mail. 
# Email List should be a commaseparated list of names.
# Testing with dummy mails
# mail -s "Mail from UNIX" rrp9861@gmail.com < test.txt
# echo "Hi,This is from CyberITHub" | sudo sendmail -s "Test Email" rrp9861@gmail.com

###########################################

############### Pipes and Filters ###############
# Pipe: You can connect two commands together so that the output from one program becomes the input of the next program, use | to conect two commands.
# Filter: When a program takes its input from another program, it performs some operation on that input, and writes the result to the "Standard Output". It is referred to as a filter.

## grep Command
# Note: For Regular Expression, check OneNote >> Programming >> Misc >> Misc languages
# fullform: globally search for a regular expression and print all lines containing it.
# The grep command searches a file or files for lines that have a certain pattern.
# ls -l | grep "Mar": To peint all the files modified in March.
# ls -l | grep -v "Mar": -v prints all lines that do not match pattern.
# -n: prints the matched line and its line number.
# -I: prints only the names of files with matching lines (letter "I")
# -i: matches either upper or lowercase.
# -c: prints only the count of matching lines.
# ls -l | grep -i "linux.*mar": line contains linux.*aug pattern (.*: denotes any char n number of time)

## sort Command
# sort filename: arranges lines of text alphabetically or numerically.
# -n: sorts numerically (example: 10 will sort after 2), ignores blanks and tabs.
# -r: Reverses the order of sort.
# -f: Sorts upper and lowercase together.
# -kx: Ignores first x fields when sorting.
# sort -nk4: sort numerically from field 5th field

## more Commands
# To print only a prtion of a file on the screen unlike vi or cat command who displays all the content.


###########################################

############### Processes Management ###############


###########################################

############### Network Communication Utilities ###############


###########################################

############# VI Editor #############
# https://www.tutorialspoint.com/unix/unix-vi-editor.htm
# view filename - open the file in read-only
# ~: means empty line
# ESC(twice): Enter into Command Mode
# :2: Takes the cursor to 2nd line
# 0: Position the cursor at the beginning of line
# $: Position the cursor at the end of line
# H: Move to the top of the screen
# L: Move to the bottom of the screen
# i: Enter into Insert Mode
# :w: Save the changes
# :q: Quit from VI
# :q!: Force Quit (without any changes)
# :wq: Save the Changes and Quit
# ZZ: Save the Changes and Quit (Same as :wq)
# x: Deletes the character under the cursor location
# X: Deletes the character before the cursor location
# d^: Deletes from the current cursor position to the beginning of the line
# d$: Deletes from the current cursor position to the end of the line
# D: Delete the current line, but keep the empty line
# dd: Delete the current line and remove the empty line
# yy: Copies the current line
# p: Puts the copied text after the cursor
# u: single undo
# U: Undo all
# Ctrl + r: Redo changes
# /: Search forward
# ?: Search backwward
# \: Escape character
# /^: Search the word at the beginning
# $: Search at the end
# .: Search single char
# *: Matches zero or more of the previous character.
# [: Starts a set of matching or non-matching expressions.
# f/F: Search character on the current line
# :!ls: execute ls command inside VI
# :s/search/replace/g: replace text globally on the current line

###########################################

#################### Regular Expressions with SED #################


###########################################

#################### File System Basics #################


###########################################

#################### User Administration #################


###########################################

#################### System Performance #################


###########################################


#################### System Logging #################


###########################################

#################### Signals and Traps #################


###########################################

#################### Useful Commands #################


###########################################

#################### Shell Builtin Mathematical Functions #################


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