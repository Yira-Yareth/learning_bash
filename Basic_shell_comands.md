# Basic shell commads

## This is a quick guide of some basic commands

### Basics
 
To list the contents of your home directory;

``` shell
ls ~
```
To take your home;
 
``` shell
cd ~
```
### Copy commands

To create a copy of original.txt called duplicate.txt. If there already was a file called duplicate.txt, it is overwritten;

``` shell
cp original.txt duplicate.txt
```

Make a copy of seasonal/summer.csv in the backup directory (which is also in /home/repl), calling the new file summer.bck

``` shell
cp seasonal/summer.csv backup/summer.bck
```

Copy spring.csv and summer.csv from the seasonal directory into the backup directory without changing your current working directory (/home/repl):

``` shell
cp seasonal/summer.csv seasonal/spring.csv backup
```

### Move commands

You are in /home/repl, which has sub-directories seasonal and backup. Using a single command, move spring.csv and summer.csv from seasonal to backup

``` shell
mv seasonal/spring.csv seasonal/summer.csv backup
```

### Rename files

mv can also be used to rename files. If you run:
``` shell
mv course.txt old-course.txt
```
then the file *course.txt* in the current working directory is "moved" to the file *old-course.txt*. This is different from the way file browsers work, but is often handy.

One warning: just like cp, mv will overwrite existing files. If, for example, you already have a file called *old-course.txt*, then the command shown above will replace it with whatever is in *course.txt*.

Rename the file winter.csv to be winter.csv.bck:

```shell
mv winter.csv winter.csv.bck
```

### Delete files

We can copy files and move them around; to delete them, we use rm, which stands for "remove". As with cp and mv, you can give rm the names of as many files as you'd like, so:

```shell
rm thesis.txt backup/thesis-2017-08.txt
```

removes both *thesis.txt* and *backup/thesis-2017-08.txt*

rm does exactly what its name says, and it does it right away: unlike graphical file browsers, the shell doesn't have a trash can, so when you type the command above, your thesis is **gone for good.**

Remove seasonal/summer.csv without changing directories:
```shell
rm seasonal/summer.csv
```

If you try to rm a directory, the shell prints an error message telling you it can't do that, primarily to stop you from accidentally deleting an entire directory full of work. Instead, you can use a separate command called rmdir. 

For added safety, it only works when the directory is empty, so you must delete the files in a directory before you delete the directory. (Experienced users can use the -r option to rm to get the same effect)

Without changing directories, delete the file agarwal.txt in the people directory:

```shell
rm people/agarwal.txt
```

Move /home/repl/people/agarwal.txt into /tmp/scratch. We suggest you use the ~ shortcut for your home directory and a relative path for the second rather than the absolute path.

```shell
mv ~/people/agarwal.txt scratch
```

### View a file's contents piece by piece

You can use cat to print large files and then scroll through the output, but it is usually more convenient to page the output. The original command for doing this was called more, but it has been superseded by a more powerful command called less

Use less seasonal/spring.csv seasonal/summer.csv to view those two files in that order. Press spacebar to page down, **:n** to go to the second file, and **:q** to quit

```shell
less seasonal/spring.csv seasonal/summer.csv
```

### Look at the start of a file

We can do this in the shell using a command called head. As its name suggests, it prints the first few lines of a file (where "a few" means 10), so the command

```shell
head seasonal/summer.csv
```

### How can I control what commands do?
You won't always want to look at the first 10 lines of a file, so the shell lets you change head's behavior by giving it a command-line flag (or just "flag" for short). If you run the command:

```shell
head -n 3 seasonal/summer.csv
```
### How can I select columns from a file?

head and tail let you select rows from a text file. If you want to select columns, you can use the command cut. It has several options (use man cut to explore them), but the most common is something like:

``` shell
cut -f 2-5,8 -d , values.csv
```
which means "select columns 2 through 5 and columns 8, using comma as the separator". cut uses -f (meaning "fields") to specify columns and -d (meaning "delimiter") to specify the separator. You need to specify the latter because some files may use spaces, tabs, or colons to separate columns.

### How can I select lines containing specific values?
**grep** takes a piece of text followed by one or more filenames and prints all of the lines in those files that contain that text. For example;

```shell
 grep bicuspid seasonal/winter.csv 
 ```
 prints lines from winter.csv that contain "bicuspid"

- *c* : print a count of matching lines rather than the lines themselves
- *h* : do not print the names of files when searching multiple files
- *i* : ignore case (e.g., treat "Regression" and "regression" as matches)
- *l* : print the names of files that contain matches, not the matches
- *n* : print line numbers for matching lines
- *v* : invert the match, i.e., only show lines that don't match


Print the contents of all of the lines containing the word molar in seasonal/autumn.csv by running a single command while in your home directory. Don't use any flags.

```shell
 grep molar seasonal/autumn.csv
 ```

Invert the match to find all of the lines that don't contain the word molar in seasonal/spring.csv, and show their line numbers. Remember, it's considered good style to put all of the flags before other values like filenames or the search term "molar"

use **-n** to show up all the lines;
```shell
 grep -v -n molar seasonal/spring.csv
 ```

Count how many lines contain the word incisor in autumn.csv and winter.csv combined. (Again, run a single command from your home directory.);

Count how many lines contain the word incisor in autumn.csv and winter.csv combined. (Again, run a single command from your home directory.)


```shell
 grep -c incisor seasonal/autumn.csv seasonal/winter.csv
 ```

-Output:
```shell
seasonal/autumn.csv:3
seasonal/winter.csv:6
```


### How can I store a command's output in a file?
All of the tools you have seen so far let you name input files. Most don't have an option for naming an output file because they don't need one. Instead, you can use redirection to save any command's output anywhere you want. If you run this command:

```shell
head -n 5 seasonal/summer.csv
```
it prints the first 5 lines of the summer data on the screen. If you run this command instead:
```shell
head -n 5 seasonal/summer.csv > top.csv
```

nothing appears on the screen. Instead, head's output is put in a new file called top.csv. You can take a look at that file's contents using cat:
```shell
cat top.csv
```
The greater-than sign > tells the shell to redirect head's output to a file. It isn't part of the head command; instead, it works with every shell command that produces output.

### How can I store a command's output in a file?

Combine tail with redirection to save the last 5 lines of seasonal/winter.csv in a file called last.cs;

```shell
tail -n 5  seasonal/winter.csv > last.csv
```








