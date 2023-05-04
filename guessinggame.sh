#!/usr/bin/env bash
# File: guessinggame.sh

echo "How many files do you have in the current directory? Take a guess.."

function guessinggame {

  local count=$(eval ls | wc -l)

  local is_correct=false

  while [[ $is_correct == false ]]
  do
    read guess
    echo "You guessed: $guess"
    if [[ $guess -gt $count ]]
    then
      echo "Too high"
      echo "Guess again!"
    elif [[ $guess -lt $count ]]
    then
      echo "Too low"
      echo "Guess again!"
    elif [[ $guess -eq $count ]]
    then
      echo "Congratulations, you guessed the right number of files!"
      let is_correct=false
    fi
  done
}

guessinggame

