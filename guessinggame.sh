#!/usr/bin/env bash

echo "[Welcome to Guessing game v0.1]"

function ask {
	echo "How many files in the current directory? Please enter a number:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low. There are more files in the directory."
	else
		echo "Too high. There are fewer files in the directory."
	fi
	ask
done

echo "Correct! You guessed the correct number of files. Here is the list of files:"
echo "---" && ls -1
