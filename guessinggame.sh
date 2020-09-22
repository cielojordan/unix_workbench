#!/usr/bin/env bash

echo "Guessing Game"

function guessLoop {
	echo "How many files are in the current directory?"
	read guess
    numFiles=$(ls -1 | wc -l)
}

guessLoop

while [[ $guess -ne $numFiles ]]
do
	if [[ $guess -lt $numFiles ]] 
	then
		echo "Yikes. Your guess is too low! Try again."
	else
		echo "Ahck. Your guess is too high! Try again."
	fi
	guessLoop
done

echo "Congratulations! You guessed correctly!"