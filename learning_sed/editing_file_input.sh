#This script replace some text 


cat files/greeting.txt


echo "-----------------------"


# for each line, change first occurrence of 'day' with 'weekend'
sed 's/day/weekend/' files/greeting.txt


echo "-----------------------"

#Change all 'e' to 'E' and save changed text to another file
sed 's/e/E/g' files/greeting.txt > files/out.txt

cat files/out.txt
