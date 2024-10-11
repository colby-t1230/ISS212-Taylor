#!C:\Program Files\Git\bin\sh.exe

#Colby Taylor - ISS 212 - Assignment 4 Week 5
#Resource: ISS 212 - Assignment 4 week 5 walkthrough
# ISS 212 CS Scripting - WK 5 - Bash Review
# Bash Script that takes input from the user and outputs a string using 2 inputs
# Takes input from the user and assigns to variables.

echo "What is your first name?"
read -r firstname

echo "What is your last name?"
read -r lastname

echo "Your first name is ${firstname} and your last name is ${lastname}"