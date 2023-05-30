# Create function
function what_day_is_it {

  # Parse the results of date
  curret_day=$(date | cut -d " " -f1)

  # Echo the result
  echo $curret_day
}

# Call the function
what_day_is_it