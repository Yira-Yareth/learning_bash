# Sed

The command name **sed** is derived from stream editor

> Please see the scripts with the same subtitle name to see exercies for a better undestandig

## 1.- Editing standard input

sed has various commands to manipulate text input. **substitute** command is most commonly used, which will be briefly discussed in this chapter. It is used to replace matching text with something else. The syntax is *s/REGEXP/REPLACEMENT/FLAGS* where

- s stands for substitute command
- / is an idiomatic delimiter character to separate various portions of the command
- REGEXP stands for regular expression
- REPLACEMENT specifies the replacement string
- FLAGS are options to change default behavior of the command

sed uses the *\n* newline character. 


