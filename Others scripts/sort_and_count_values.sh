#This script takes "budget" csv sort days names and counts how many times the first letter of the first columns appears #

cut d, -c 1  csv/Bud* |grep -v Day | sort | uniq -c

