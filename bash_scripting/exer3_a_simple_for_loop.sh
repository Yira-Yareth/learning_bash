#This scripts shows up all the files with .r extention
#For more information please see the exercises md, exercie number 3


#Use a FOR loo on files in directory
for file in data/inherited_folder/*.R

do
 #Echo out each file
    echo $file

done
