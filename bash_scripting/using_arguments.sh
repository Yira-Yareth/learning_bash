#echo de first ARGV argument
echo $1

#cat all the first 5 files of all  files

cat data/hire_data/*.csv | head  -n 5 data/hire_data/*.csv



echo  "  ---------------------------------------"

#Pipe it to grep using the first ARGV argument
cat data/hire_data/*.csv | grep $1

#write out to a named csv using the first ARGV argument
cat data/hire_data/*.csv | grep "$1" > "$1".csv
