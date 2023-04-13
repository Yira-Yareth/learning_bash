#This script copies the files "models_results" according their accuracy.

#To the complete instructions please see the notebook with the exercise with the same name


# Extract Accuracy from first ARGV elemen
accuracy=$(grep Accuracy $1 | sed 's/.* //')

# Conditionally move into good_models folder
if [ $accuracy -ge 90 ]; then
    cp $1 data/good_models/
fi

# Conditionally move into bad_models folder
if [ $accuracy -lt 90 ]; then
    cp $1 data/bad_models/
fi

