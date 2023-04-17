#This script make some change based in a conditional, this script use 6 arguments, 

# change commas to hyphens only if the input line contains '2'
# space between the filter and the command is optional

printf $1,$2,$3'\n'$4,$5,$6'\n' | sed '/2/ s/,/-/g'


# change commas to hyphens if the input line does NOT contain '2'
# space around ! is optional
printf $1,$2,$3'\n'$4,$5,$6'\n' | sed '/2/! s/,/-/g'






