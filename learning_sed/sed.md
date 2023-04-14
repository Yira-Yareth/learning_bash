# Sed

The command name **sed** is derived from stream editor

> Please refer to the scripts with the same subtitle name for exercises for better understandig

## Part 1

### 1.- Editing standard input

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