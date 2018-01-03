#!/bin/bash
## Author: Stew Stunes
## About: Countdown timer in minutes, for writing sprints
## Command: ./timer.sh 25 - countsdown from 25 minutes, displays remaining seconds
##          |
##          \
##           TIME REMAINING: 0 
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##           !!!!FINISHED!!!!
##

if [ $# -ne 1 ]; then
   echo "usage: $0 MIN (example: $0 1)";
   exit 1;
fi
 
TIME=$(($1*60))
CUR=$TIME
 
while [ $CUR -gt 0 ]
do
    CUR=$(($CUR - 1))
    clear
    echo "TIME REMAINING: $CUR"
    sleep 1
done

#Ending message to catch your attention
for i in {1..10} 
do
    echo "!!!!FINISHED!!!!"
done
 
