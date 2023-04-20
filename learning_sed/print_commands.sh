#This script filters by the first argument the file which is the second argument.
#For more info please see the md "sed"


sed -n '/'$1'/p' $2
