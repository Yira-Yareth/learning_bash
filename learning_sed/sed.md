# Sed

The command name **sed** is derived from stream editor

> Please refer to the scripts with the same subtitle name for exercises for better understandig

## Part 1 Editing standard input

sed has various commands to manipulate text input. **substitute** command is most commonly used, which will be briefly discussed in this chapter. It is used to replace matching text with something else. The syntax is *s/REGEXP/REPLACEMENT/FLAGS* where

- s stands for substitute command
- / is an idiomatic delimiter character to separate various portions of the command
- REGEXP stands for regular expression
- REPLACEMENT specifies the replacement string
- FLAGS are options to change default behavior of the command

sed uses the *\n* newline character. 


### 2.- Editing file input 

Although sed derives its name from stream editing, it is common to use sed for file editing. To do so, append one or more input filenames to the command. You can also specify stdin as a source by using - as the filename. By default, output will go to stdout and the input files will not be modified. 

### Exercises Part 1

a) Replace 5 with five for the given stdin source.

```shell
$ echo 'They ate 5 apples' | sed ##### add your solution here
They ate five apples
```



b) Replace all occurrences of 0xA0 with 0x50 and 0xFF with 0x7F for the given input file.

```shell
$ cat hex.txt
start address: 0xA0, func1 address: 0xA0
end address: 0xFF, func2 address: 0xB0
```

```shell
$ sed ##### add your solution here
start address: 0x50, func1 address: 0x50
end address: 0x7F, func2 address: 0xB0
```

c) The substitute command searches and replaces sequences of characters. When you need to map one or more characters with another set of corresponding characters, you can use the y command. Quoting from the manual:

*y/src/dst/* Transliterate any characters in the pattern space which match any of the source-chars with the corresponding character in dest-chars.

Use the y command to transform the given input string to get the output string as shown below.

```shell
$ echo 'goal new user sit eat dinner' | sed ##### add your solution here
gOAl nEw UsEr sIt EAt dInnEr
```

## Part 2 In-place file editing

This chapter will discuss how to write back the changes to the input file(s) itself using the -i command line option.


#### With backup
When an extension is provided as an argument to -i option, the original contents of the input file gets preserved as per the extension given. For example, if the input file is ip.txt and -i.orig is used, the backup file will be named as ip.txt.orig


### Without backup
Sometimes backups are not desirable. Using -i option on its own will prevent creating backups. Be careful though, as changes made cannot be undone. In such cases, test the command with sample input before using -i option on actual file. You could also use the option with backup, compare the differences with a diff program and then delete the backup.

### Place backups in different directory
The * can be used to place the backups in another directory instead of the parent directory of input files. The backup directory should already exist for this to work.

### Excersise

In the code sample shown below, two files are created by redirecting output of echo command. Then a sed command is used to edit b1.txt in-place as well as create a backup named bkp.b1.txt. Will the sed command work as expected? If not, why?

```shell
$ echo '2 apples' > b1.txt
$ echo '5 bananas' > -ibkp.txt
$ sed -ibkp.* 's/2/two/' b1.txt
```

answer; Unquoted strings on the command line are subjected to shell interpretation. So, -ibkp.* will get expanded as -ibkp.txt (as there exists a file whose name starts with -ibkp.). This results in back up filename as b1.txtbkp.txt (because bkp.txt will be treated as the suffix to be added to input file b1.txt). The correct usage is 
```shell
sed -i'bkp.*' 's/2/two/' b1.txt 
```
to get bkp.b1.txt as the back up filename.


##Part 3 Selective editing

By default, sed acts on the entire input content. Many a times, you only want to act upon specific portions of the input. To that end, sed has features to filter lines, similar to tools like grep, head and tail. sed can replicate most of grep's filtering features without too much fuss. And has features like line number based filtering, selecting lines between two patterns, relative addressing, etc which isn't possible with grep. If you are familiar with functional programming, you would have come across map, filter, reduce paradigm. A typical task with sed involves filtering a subset of input and then modifying (mapping) them. Sometimes, the subset is the entire input, as seen in the examples of previous chapters.

A tool optimized for a particular functionality should be preferred where possible. grep, head and tail would be better performance wise compared to sed for equivalent line filtering solutions

###Conditional execution
As seen earlier, the syntax for substitute command is s/REGEXP/REPLACEMENT/FLAGS. The /REGEXP/FLAGS portion can be used as a conditional expression to allow commands to execute only for the lines matching the pattern.


*/REGEXP/* is one of the ways to define a filter in sed, termed as address in the manual. Others will be covered in sections to come in this chapter.

### Delete command
To delete the filtered lines, use the d command. Recall that all input lines are printed by default


