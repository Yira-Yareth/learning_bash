# Combining tools

#### Use a command's output as an input

Suppose you want to get lines from the middle of a file. More specifically, suppose you want to get lines 3-5 from one of our data files. You can start by using head to get the first 5 lines and redirect that to a file, and then use tail to select the last 3:

```shell
head -n 5 seasonal/winter.csv > top.csv
tail -n 3 top.csv
```

### What's a better way to combine commands?
Using redirection to combine commands has two drawbacks:

1.- It leaves a lot of intermediate files lying around (like top.csv).

2.- The commands to produce your final result are scattered across several lines of history.

The shell provides another tool that solves both of these problems at once called a pipe. Once again, start by running *head*:

```shell
head -n 5 seasonal/summer.csv
```

Instead of sending head's output to a file, add a vertical bar and the tail command without a filename:
```shell
head -n 5 seasonal/summer.csv | tail -n 3
```
The pipe symbol tells the shell to use the output of the command on the left as the input to the command on the right.


Use cut to select all of the tooth names from column 2 of the comma delimited file seasonal/summer.csv, then pipe the result to grep, with an inverted match, to exclude the header line containing the word "Tooth";
```shell
cut -f 2 -d , seasonal/summer.csv | grep -v Tooth
```

### How can I combine many commands?
You can chain any number of commands together. For example, this command:
```shell
cut -d , -f 1 seasonal/spring.csv | grep -v Date | head -n 10
```
will:

1- select the first column from the spring data;
2- remove the header line containing the word "Date"; and
3- select the first 10 lines of actual data.

### How can I count the records in a file?
The command wc (short for "word count") prints the number of characters, words, and lines in a file. You can make it print only one of these using -c, -w, or -l respectively.

Count how many records in seasonal/spring.csv have dates in July 2017 (2017-07);

```shell
grep 2017-07 seasonal/spring.csv | wc -l
```

### What other wildcards can I use?
The shell has other wildcards as well, though they are less commonly used:

*?* - matches a single character, so 201?.txt will match 2017.txt or 2018.txt, **but not** 2017-01.txt.
*[...]*- matches any one of the characters inside the square brackets, so 201[78].txt matches 2017.txt or 2018.txt, **but not** 2016.txt.
*{...}* - matches any of the comma-separated patterns inside the curly brackets, so {*.txt, *.csv} matches any file whose name ends with .txt or .csv, **but not** files whose names end with .pdf.


### How can I sort lines of text?
As its name suggests, sort puts data in order. By default it does this in ascending alphabetical order, but the flags -n and -r can be used to sort numerically and reverse the order of its output, while -b tells it to ignore leading blanks and -f tells it to fold case (i.e., be case-insensitive). Pipelines often use grep to get rid of unwanted records and then sort to put the remaining records in order.

sort the names of the teeth in seasonal/winter.csv (not summer.csv) in descending alphabetical order;

```shell
cut -d , -f 2 seasonal/winter.csv | grep -v Tooth | sort -r
```

###How can I remove duplicate lines?
Another command that is often used with sort is uniq, whose job is to remove duplicated lines. More specifically, it removes adjacent duplicated lines.

#### Write a pipeline to:

- get the second column from seasonal/winter.csv
- remove the word "Tooth" from the output so that only tooth names are displayed,
- sort the output so that all occurrences of a particular tooth name are adjacent; and
- display each tooth name once along with a count of how often it occurs.

```shell
cut -d , -f 2 seasonal/winter.csv | grep -v Tooth | sort | uniq -c
```


### Wrapping up

Use wc with appropriate parameters to list the number of lines in all of the seasonal data files. (Use a wildcard for the filenames instead of typing them all in by hand.)

```shell
wc -l seasonal/*
```
Add another command to the previous one using a pipe to remove the line containing the word "total";

```shell
wc -l seasonal/* | grep -v total
```

Add two more stages to the pipeline that use sort -n and head -n 1 to find the file containing the fewest lines;

```shell
wc -l seasonal/* | grep -v total | sort -n | head -n 1
```















