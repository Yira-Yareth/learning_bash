#!/bin/bash


#Write a shell script that accepts a file or directory name as an argument. Have the script report if it is a regular file/
#a directory, or other type of file. If it is a regular file, exit with a 0 exit status. 
#If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.


read -p "Enter the path to a file or a directory:" FILE

if [ -f $FILE ]
 then
  echo "${FILE} is a regular file"
elif [ -d $FILE ]
 then 
  echo "${FILE} is a directory"
else
  echo "${FILE} is another type of file"
fi


