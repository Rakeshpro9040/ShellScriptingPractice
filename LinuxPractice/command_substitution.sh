#!/bin/sh

DATE=$(date)
echo "Date is $DATE"
USERS=$(who | wc -l)
echo "Logged in user are $USERS"
UP=$(
    date
    uptime
)
echo "Uptime is $UP"

# Output
: '
Date is Sat Apr  9 14:53:37 IST 2022
Logged in user are 1
Uptime is Sat Apr  9 14:53:38 IST 2022
 14:53:38 up 46 min,  1 user,  load average: 0.01, 0.07, 0.04
'
