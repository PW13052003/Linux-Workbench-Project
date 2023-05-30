#!/bin/bash

# Function to check if the guess is correct
function check_guess {
  local files=$(ls -l | grep "^-" | wc -l)
  local guess=$1

  if [[ $guess -lt $files ]]; then
    echo "Too low!"
  elif [[ $guess -gt $files ]]; then
    echo "Too high!"
  else
    echo "Congratulations! Your guess is correct!"
    exit 0
  fi
}

# Main program
files=$(ls -l | grep "^-" | wc -l)
guess=-1

while [[ $guess -ne $files ]]; do
  read -p "How many files are in the current directory? " guess
  check_guess $guess
done
