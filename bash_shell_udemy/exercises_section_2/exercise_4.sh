#!/bin/bash

#Exercise 4:

#Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display "Shadow passwords are enabled."/
# Next, check to see if you can write to the file. /
#If you can, display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have permissions to edit /etc/shadow."


File=/etc/shadow

if [ -f "$File" ]; then
 echo "Shadow passwords are enabled."
else
 echo "Shadow passwords are not enabled"
fi

if  [ -w "$File" ]; then
 echo "You have permissions to edit /etc/shadow."
else
 echo "You do NOT have permissions to edit /etc/shadow."
fi



