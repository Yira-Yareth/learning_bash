# Excercises

**To see the final script please see the script with the same name in this same folder**

## 1.- Using arguments

In this exercise, you are working as a data scientist in the HR department of a large IT company. You need to extract salary figures for recent hires, however, the HR IT system simply spits out hundreds of files into the folder /hire_data.

Each file is comma-delimited in the format *COUNTRY,CITY,JOBTITLE,SALARY* such as *Estonia,Tallinn,Javascript Developer,118286*

Your job is to create a Bash script to extract the information needed. Depending on the task at hand, you may need to go back and extract data for a different city. Therefore, your script will need to take in a city (an argument) as a variable, filter all the files by this city and output to a new CSV with the city name. This file can then form part of your analytics work.

### Instructions

- echo the first ARGV argument so you can confirm it is being read in.
- cat all the fisrt 5 lines of all files in the directory /hire_data and pipe to grep to filter using the city name (your first ARGV argument).
- On the same line, pipe out the filtered data to a new CSV called cityname.csv where cityname is taken from the first ARGV argument.
- Save your script and run from the console twice (do not use the ./script.sh method). Once with the argument Seoul. Then once with the argument Tallinn and Berlin 

## 2.- Moving relevant files
You have recently joined a new startup as one of the few technical employees. Your manager has asked if you can assist to clean up some of the folders on the server. The company has been through a variety of server monitoring software and so there are many files that should be deleted.

Luckily you know that all the files to keep contain both vpt and SRVM_ inside the file somewhere.

Your task is to write a Bash script that will take in file names as ARGV elements and move the file to good_logs/ if it matches both conditions above. The q flag is for 'quiet' so it doesn't return the matched lines like grep normally does. It just returns true if any lines match.

### Instructions

- Create a variable sfile out of the first ARGV element.
- Use an IF statement and grep to check if the sfile variable contains SRVM_ AND vpt inside.
- Inside the IF statement, move matching files to the good_logs/ directory.
- Try your script on all of the files in the directory (that is, run it four times - once for each file). It should move only one of them.
- data needed to move it is in data/data_excer2
- data needs to be move to /output_scripts/good_logs

## 3.- A simple FOR loop
You are working as a data scientist in an organization. Due to a recent merge of departments, you have inherited a folder with many files inside. You know that the .R scripts may be useful for your work but you aren't sure what they contain.

Write a simple Bash script to loop through all the files in the directory inherited_folder/ that end in .R and print out their names so you can get a quick look at what sort of scripts you have. Hopefully the file names are useful!

### Instructions

- Use a FOR statement to loop through files that end in .R in data/inherited_folder/ using a glob expansion.
- echo out each file name into the console.


## 4.- Cleaning up a directory
Continuing your work as a data scientist in a large organization, you were told today that a colleague has left for their dream job (lucky them!). Unfortunately, when their logins were terminated, all their files were dumped into a single folder.

The good news is that most of their useful code has been backed up. However, all their python files using the Random Forest algorithm are buried in the file dump.

The task has fallen to you to sift through the hundreds of files to determine if they are both Python files and contain a Random Forest model. This sounds like a perfect opportunity to use your Bash skills, rather than checking every single file manually.

Write a script that loops through each file in the robs_files/ directory to see if it is a Python file (ends in .py) AND contains RandomForestClassifier. If so, move it into the to_keep/ directory.

### Instructions

- Use a FOR statement to loop through (using glob expansion) files that end in .py in robs_files/.
- Use an IF statement and grep (remember the 'quiet' flag?) to check if RandomForestClassifier is in the file. Don't use a shell-within-a-shell here.
- Move the Python files that contain RandomForestClassifier into the to_keep/ directory.

## 5.-Days of the week with CASE
In your role as a Data Scientist, it is sometimes useful to associate dates with a 'working day' (Monday, Tuesday, Wednesday, Thursday, Friday) or a 'weekend' (Saturday & Sunday).

Your task is to build a small Bash script that will be useful to call in many areas of your data pipeline. It must take in a single argument (string of a day) into ARGV and use a CASE statement to print out whether the argument was a weekday or a weekend. You only need to account for the capitalized case for now.

You also don't need to worry about words or letters before and after. Just use exact matching for this example.

Remember the basic structure of a case statement is:
```shell
case MATCHVAR in
  PATTERN1)
  COMMAND1;;
  PATTERN2)
  COMMAND2;;
  *)
  DEFAULT COMMAND;;
esac
```
### Instructions

- Build a CASE statement that matches on the first ARGV element.
- Create a match on each weekday such as Monday, Tuesday etc. using OR syntax on a single line, then a match on each weekend day (Saturday and Sunday) etc. using OR syntax on a single line.
- Create a default match that prints out Not a day! if none of the above patterns are matched.
- Save your script and run in the terminal window with Wednesday and Saturday to test.