#!/bin/bash



#Modify the previous script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

for FILE in $@
do
  if [ -f "$FILE" ]
  then
    echo "$FILE is a regular file."
  elif [ -d "$FILE" ]
  then
    echo "$FILE is a directory."
  else
    echo "$FILE is something other than a regular file or directory."
  fi

  ls -l $FILE
done





