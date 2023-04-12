# This script convert the argument give it to in Fahrenheit to celsius

# To see all the instructions please see the exercise with the same name in the notebook of this folder


#Get first ARG into a variable
temp_f=$1

#Substract 32 (first part of the formula to convert F to C)
temp_2=$(echo "scale=2; $temp_f - 32 " | bc)

#Multiply by 5/9 (second part of the formula)

temp_c=$(echo "scale=2; $temp_2 * 5 / 9" | bc)

#Print the celsius temp
echo $temp_c


