#This script change the names: "Cherno" to "Cherno City" and "Arda" to "Arna United" and save the result into a new csv 

#!/bin/bash


cat data/soccer_scores.csv | sed 's/Cherno/Cherno City/g' | sed 's/Arda/Arda United/g' > soccer_scores_edited.csv
