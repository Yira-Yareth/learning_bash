#This script needs 6 arguments to run


#sample command output for stream editing"
printf '%s\n%s\n' "$1 $2 $3" "$4 $5 $6"

echo "-------------"

# for each input line, change only the first ',' to '-'
printf '%s\n%s\n' "$1 $2 $3" "$4 $5 $6" | sed 's/ /-/'
#printf '%s\n%s\n' | sed 's/,/-/'  "$1 $2 $3" "$4 $5 $6"


echo "-------------"

# change all matches by adding the 'g' flag (g stands for global).
printf '%s\n%s\n' "$1 $2 $3" "$4 $5 $6" | sed 's/ /-/g'

