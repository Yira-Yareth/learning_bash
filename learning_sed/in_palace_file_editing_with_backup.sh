#This script change some name color for other ones an creates and backup of the original file

#To see more of this script please see the md, chapter 2, part with the same name script



cat files/colors.txt

echo "-------------------------"


# no output on terminal as -i option is used
# space is NOT allowed between -i and extension
sed -i.bkp 's/blue/green/' files/colors.txt


# output from sed is written back to 'colors.txt'
cat files/colors.txt


echo "-------------------------"


#original file is preserved in 'colors.txt.bkp'
cat files/colors.txt.bkp
