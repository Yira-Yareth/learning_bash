# Batch processing 

## Variables

A shell variable is like a local variable in a programming language.

To create a shell variable, you simply assign a value to a name:
```shell
training=seasonal/summer.csv
```
without any spaces before or after the = sign. Once you have done this, you can check the variable's value with:
```shell
echo $training
```

-*Output:*
```shell
seasonal/summer.csv
```

Define a variable called testing with the value seasonal/winter.csv:
```shell
testing=seasonal/winter.csv
```

Use head -n 1 SOMETHING to get the first line from seasonal/winter.csv using the value of the variable testing instead of the name of the file:

```shell
head -n 1 $testing
```

## Loops

Loops repeat commands many times. If we run this command:

```shell
for filetype in gif jpg png; do echo $filetype; done

```
it produces:

```shell
gif
jpg
png
```

Notice these things about the loop:

 1.- The structure is for …variable… in …list… ; do …body… ; done

 2.- The list of things the loop is to process (in our case, the words gif, jpg, and png).

 3.- The variable that keeps track of which thing the loop is currently processing (in our case, filetype).

 4.-The body of the loop that does the processing (in our case, echo $filetype).

Notice that the body uses **$filetype** to get the variable's value instead of just filetype, just like it does with any other shell variable. Also notice where the semi-colons go: the first one comes between the list and the keyword *do*, and the second comes between the body and the keyword *done*.


### Loop with wildcards

```shell
for filename in people/*; do echo $filename; done
```

### Loops with many commands

Printing filenames is useful for debugging, but the real purpose of loops is to do things with multiple files. This loop prints the second line of each data file:

```shell
for file in seasonal/*.csv; do head -n 2 $file | tail -n 1; done
```

It has the same structure as the other loops you have already seen: all that's different is that its body is a pipeline of two commands instead of a single command.

Write a loop that prints the last entry from July 2017 (2017-07) in every seasonal file. It should produce a similar output to:

```shell
for file in seasonal/*; do grep 2017-07 $file | tail -n 1; done
```

A loop can contain any number of commands.To tell the shell where one ends and the next begins, you must separate them with semi-colons:

```shell
for f in seasonal/*.csv; do echo $f; head -n 2 $f | tail -n 1; done
```




