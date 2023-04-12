# Excercises

## Using_arguments

In this exercise, you are working as a data scientist in the HR department of a large IT company. You need to extract salary figures for recent hires, however, the HR IT system simply spits out hundreds of files into the folder /hire_data.

Each file is comma-delimited in the format *COUNTRY,CITY,JOBTITLE,SALARY* such as *Estonia,Tallinn,Javascript Developer,118286*

Your job is to create a Bash script to extract the information needed. Depending on the task at hand, you may need to go back and extract data for a different city. Therefore, your script will need to take in a city (an argument) as a variable, filter all the files by this city and output to a new CSV with the city name. This file can then form part of your analytics work.

### Instructions

- echo the first ARGV argument so you can confirm it is being read in.
- cat all the fisrt 5 lines of all files in the directory /hire_data and pipe to grep to filter using the city name (your first ARGV argument).
- On the same line, pipe out the filtered data to a new CSV called cityname.csv where cityname is taken from the first ARGV argument.
- Save your script and run from the console twice (do not use the ./script.sh method). Once with the argument Seoul. Then once with the argument Tallinn and Berlin 

**To see the final script please see the script with the same name in this same folder**



