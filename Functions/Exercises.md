## 1.- Get the current day
Whilst working on a variety of Bash scripts in your data analytics infrastructure, you find that you often need to get the current day of the week. You can see this is unnecessary duplication of code and can be refactored (reduce the size by writing more efficient code) using your new skills in Bash functions.

Write a simple Bash function that, when called, will simply print out the current day of the week. This will involve parsing the output of the date program from a shell-within-a-shell.

A reminder that the output of date will look something like this (depending on the timezone you are calling it from!)

```
Fri 27 Dec 2019 14:24:33 AEDT
```

You want to extract the Fri part only.

### Instructions

- Set up a function called what_day_is_it without using the word function (as you did using the function-word method).
- Parse the output of date into a variable called current_day. The extraction component has been done for you.
- Echo the result.
- Call the function just below the function definition

## 2.- A percentage calculator
In your work as a data scientist, you often find yourself needing to calculate percentages within Bash scripts. This would be a great opportunity to create a nice modular function to be called from different places in your code.

Your task is to create a Bash function that will calculate a percentage of two numbers that are given as arguments and return the value.

A test example you can think of to use in this script is a model that you just ran where there were 456 correct predictions out of 632 on the test set.

Remember that the shell can't natively handle decimal places, so it will be safer to employ the use of bc.

### Instructions

Create a function called return_percentage using the function-word method.
Create a variable inside the function called percent that divides the first argument fed into the function by the second argument.
Return the calculated value by echoing it back.
Call the function with the mentioned test values of 456 (the first argument) and 632 (the second argument) and echo the result.