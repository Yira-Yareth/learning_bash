#Exercises part 1 for more info please see the md



#Replace 5 with five for the given stdin source.

echo 'They ate 5 apples' | sed 's/5/five/'


echo "----------------------"


#Replace all occurrences of 0xA0 with 0x50 and 0xFF with 0x7F for the given input file

echo "Original"
cat files/hex.txt

echo "New"

sed 's/0xA0/0x50/g' files/hex.txt | sed 's/0xFF/0x7F/g'


echo "----------------------"







