#!/bin/bash


#Exercise 3:

#Store the output of the command "hostname" in a variable. Display "This script is running on _______." where "_______" is the output of the "hostname" command.

#Hint: It's a best practice to use the ${VARIABLE} syntax if there is text or characters that directly precede or follow the variable.



#storing hostname command into a variable

$HOSTNAME

echo "This script is running on ${HOSTNAME}." where "${HOSTNAME}" is the output of the "hostname" command


