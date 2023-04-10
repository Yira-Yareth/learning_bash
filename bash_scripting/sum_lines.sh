#!/bin/bash

#This script will aggregate to see how many times each team has won


cat data/soccer_scores.csv | cut -d "," -f 2 | tail -n +2 | sort | uniq -c
