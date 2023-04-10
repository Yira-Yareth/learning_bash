#This script show the arguments give it to it and count it to also show it to the end of the result. To execute the script is necessary give it to it 2 aguments


#echo the first and second ARGV arguments
echo $1
echo $2

#echo the entire ARGV array
echo $@

#echo out the size of ARGV
echo $#

#echo out the size of ARGV with a message

echo "There are " $# "aguments" 



