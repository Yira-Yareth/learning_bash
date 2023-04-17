#this script edit multiple files with sed.

sed -i.bkp 's/bad/good/' files/f1.txt files/f2.txt



cat files/f1.txt

cat files/f1.txt.bkp


echo "/////////"


cat files/f2.txt

cat files/f2.txt.bkp

