# This script concanate and print out the information of all the temps directory file

#To see all the instructions please see the exercise with the same name in the notebook


#create three variables from the temp data files contents

temp_a=$(cat data/temps/region_A.txt)
temp_b=$(cat data/temps/region_B.txt)
temp_c=$(cat data/temps/region_C.txt)


#Print out the three variables
echo "The three temperatures were $temp_a, $temp_b and $temp_c"






