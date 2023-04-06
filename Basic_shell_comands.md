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






