# Batch Proccesing commands

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

