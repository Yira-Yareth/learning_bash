#This scrips create and print arrays with their keys


# Create empty associative array
declare -A model_metrics

# Add the key-value pairs
model_metrics[model_accuracy]=98
model_metrics[model_name]="knn"
model_metrics[model_f1]=0.82


# Print out the entire array
echo ${model_metrics[@]}


# Declare associative array with key-value pairs on one line
declare -A model_metrics2=([model_year]=2000 [model_race]="yyr" [model_yr]=0.90)

# Print out the entire array
echo ${model_metrics2[@]}


# Print out just the keys
echo ${!model_metrics[@]}

# Print out just the keys
echo ${!model_metrics2[@]}
