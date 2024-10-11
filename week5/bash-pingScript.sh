#!C:\Program Files\Git\bin\sh.exe

#Colby Taylor - ISS 212 - Assignment 4 Week 5
#Resource: ISS 212 - Assignment 4 week 5 walkthrough
# ISS 212 CS Scripting - WK 5 - Bash Review
# This script will ping any address provided as an argument.
# usage: bash bash-pingScript.sh <IP Address Here, sans brackets.>

SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target: ${TARGET}..."
ping "${TARGET}"