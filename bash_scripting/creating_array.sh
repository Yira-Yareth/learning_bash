#This script creates the same array twice but in different way also print the array with special prperty

# Create a normal array with the mentioned elements
capital_cities=("Sydney" "Albany" "Paris")


# Create a normal array with the mentioned elements using the declare method
declare -a capital_cities2

# Add (append) the elements... REMEMBER NO SPACE AFTER =
capital_cities2+=("Berlin ")
capital_cities2+=("Brusselas ")
capital_cities2+=("Mexico ")
capital_cities2+=("Lourdes ")

# Print out the first entire array
echo ${capital_cities[@]}

# Print out the first array length
echo ${#capital_cities[@]}

# Print out the second entire array
echo ${capital_cities2[@]}

# Print out the second array length
echo ${#capital_cities2[@]}

