#This script moves files with especified words
#Please see excersies.md for more informations

# Create variable from first ARGV element
sfile=$1

# Create an IF statement on sfile's contents
if grep -q 'SRVM_' $sfile && grep -q 'vpt' $sfile; then
  #Move file if matched
  mv $sfile outputs_scripts/good_logs/

fi
