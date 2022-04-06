#!/usr/bin/env bash
# File: guessinggame.sh

# This program prompts the user to guess the number of files contained in this directory

function guessinggame {
local num_of_files=$(ls | wc -l)
echo "How many files are in the current directory?"
echo "Please guess then press enter:"
read resp

while [[ $resp -ne num_of_files ]]
do 
   if [[ $resp -lt num_of_files ]]
   then 
      echo "The number you entered is less than the number of files in the current directory."
   else 
      echo "The number you entered is greater than the number of files in the current directory."
   fi     
   echo "Please enter another number"
   read respo
   let resp=$respo
done

if [[ $resp -eq num_of_files ]]
then 
   echo "Congratulations, You guessed right! there are $resp files in the current directory"
fi
}

guessinggame

