#This script calculate the average temperature of the regions and append this to an array.

# Create variables from the temperature data files
temp_b="$(cat data/temps/region_B.txt)"
temp_c="$(cat data/temps/region_C.txt)"

# Create an array with these variables as elements
region_temps=($temp_b $temp_c)

# Call an external program to get average temperature
average_temp=$(echo "scale=2; (${region_temps[0]} + ${region_temps[1]}) / 2" | bc)

# Append average temp to the array
region_temps+=($average_temp)

# Print out the whole array
echo ${region_temps[@]}




