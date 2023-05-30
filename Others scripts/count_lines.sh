# This script counts the lines in the file(s)

# Tail command also comes with an ‘+’ option which is not present in the head command 
#With this option tail command prints the data starting from specified line number of the file instead of end
# -q: It is used if more than 1 file is given. Because of this command, data from each file is not precedes by its file name 


tail -q -n +2 $@ | wc -l 

