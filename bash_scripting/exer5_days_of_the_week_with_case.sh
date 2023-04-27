#This script saids if the day enter is a weekday or a weekend day
#For more information please see md exercises, number 4.


#Create a CASE statement matching the first ARGV element
case $1 in
 #Match on all weekdays
 Monday|Tuesday|Wednesday|Thursday|Friday)
 echo "It is a weekday";;
 #Match on all weekend days
 Saturday|Sunday)
 echo "It is a Weekend";;
 #Create a default
 *)
 echo "Not a day!";;
esac
