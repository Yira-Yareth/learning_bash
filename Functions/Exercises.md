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

- Create a function called return_percentage using the function-word method.
- Create a variable inside the function called percent that divides the first argument fed into the function by the second argument.
Return the calculated value by echoing it back.
- Call the function with the mentioned test values of 456 (the first argument) and 632 (the second argument) and echo the result.


## 3.- Sports analytics function
You have been contracted back to the soccer league to help them with some sports analytics. You notice that a number of the scripts undertake aggregations, just like you did in a previous exercise. Since there is a lot of duplication of code, this is an excellent opportunity to create a single useful function that can be called at many places in the script.

Your task is to create a Bash function that will take in a city name and find out how many wins they have had since recording began.

Inside the main function, this script will call out to a shell-within-a-shell which is captured in a (by default, global) variable. You can then access this variable outside the function. This was the first technique discussed in the video for getting data out of a function.

Most of the shell pipeline used has been done for you, though of course feel free to explore and understand what is happening here. Nothing there should be new to you!

### Instructions

- Create a function called get_number_wins using the function-word method.
- Create a variable inside the function called win_stats that takes the argument fed into the function to filter the last step of the shell-pipeline presented.
- Call the function using the city Etar.
- Below the function call, try to access the win_stats variable created inside the function in the echo command presented.

## 4.- Summing an array
A common programming task is obtaining the sum of an array of numbers. Let's create a function to assist with this common task.

Create a Bash function that will take in an array of numbers and return its sum. We will use bc rather than expr to ensure we can handle decimals.

Your company's security rules state that all variables in functions must be restricted local scope so you will need to keep this in mind.

An array of numbers you can use for a test of your function would be the daily sales in your organization this week (in thousands):

14 12 23.5 16 19.34 which should sum to 84.84

### Instructions

- Create a function called sum_array and add a base variable (equal to 0) called sum with local scope. You will loop through the array and increment this variable.
- Create a FOR loop through the ARGV array inside sum_array (hint: This is not $1! but another special array property) and increment sum with each element of the array.
- Rather than assign to a global variable, echo back the result of your FOR loop summation.
- Call your function using the test array provided and echo the result. You can capture the results of the function call using the shell-within-a-shell notation