# Creating new tools

## Edit a file

Unix has a bewildering variety of text editors. For this course, we will use a simple one called Nano. If you type nano filename, it will open filename for editing (or create it if it doesn't already exist). You can move around with the arrow keys, delete characters using backspace, and do other operations with control-key combinations:

- Ctrl + K: delete a line.
- Ctrl + U: un-delete a line.
- Ctrl + O: save the file ('O' stands for 'output'). You will also need to press Enter to confirm the filename!
- Ctrl + X: exit the editor.

## Record what I just did
When you are doing a complex analysis, you will often want to keep a record of the commands you used. You can do this with the tools you have already seen:

 1.- Run history.
 2.- Pipe its output to tail -n 10 (or however many recent steps you want to save).
 3.- Redirect that to a file called something like *figure-5.history.*

This is better than writing things down in a lab notebook because it is guaranteed not to miss any steps. It also illustrates the central idea of the shell: simple tools that produce and consume lines of text can be combined in a wide variety of ways to solve a broad range of problems.

Copy the files seasonal/spring.csv and seasonal/summer.csv to your home directory:

```shell
cp seasonal/s* ~
```

Use grep with the -h flag (to stop it from printing filenames) and -v Tooth (to select lines that don't match the header line) to select the data records from spring.csv and summer.csv in that order and redirect the output to temp.csv:

```shell
grep -h -v Tooth seasonal/s* > temp.csv
```
Pipe history into tail -n 3 and redirect the output to steps.txt to save the last three commands in a file. (You need to save three instead of just two because the history command itself will be in the list.):

```shell
tail -n 3 temp.csv | history > steps.txt
```

## Save commands to re-run later

you can store commands in files for the shell to run over and over again. To start exploring this powerful capability, put the following command in a file called headers.sh:

```shell
head -n 1 seasonal/*.csv
```

This command selects the first row from each of the CSV files in the seasonal directory. Once you have created this file, you can run it by typing:
```shell
bash headers.sh
```

This tells the shell (which is just a program called bash) to run the commands contained in the file headers.sh, which produces the same output as running the commands directly.