# Sorting model results

**To see the final scripts of each exercise please see the scripts with the same name in this same folder**

You are working as a data scientist in a large corporation. The production environment for your machine learning models writes out text files into the model_results/ folder whenever an experiment is completed. The files have the following structure (example):

Model Name: KNN
Accuracy: 89
F1: 0.87
Date: 2019-12-01
ModelID: 34598utjfddfgdg

You can see the model name, accuracy and F1 scores, the date the experiment completed and a unique ID to link the model experiment back into your experiment system.

The company has a threshold of 90% for accuracy for a model to continue experimentation. Your task is to write a Bash script that takes in an ARGV argument (a filename), extracts the accuracy score and conditionally sorts the model result file into one of two folders: good_models/ for those with accuracy greater than or equal to 90 and bad_models/ for those less than 90. You must run your script from the terminal with the requested arguments before submitting your answer.


###Instructions

- Create a variable, accuracy by extracting the "Accuracy" line (and "Accuracy" value) in the first ARGV element (a file).
- Create an IF statement to move the file into good_models/ folder if it is greater than or equal to 90 using a flag, not a mathematical sign.
- Create an IF statement to move the file into bad_models/ folder if it is less than 90 using a flag, not a mathematical sign.
- Run your script from the terminal pane twice (using bash script.sh). Once with model_results/model_1.txt, then once with model_results/model_2.txt as the only argument.