#!/bin/bash

# Disclaimer: this is for educational purpose only

function is_loyal() {
read -p "Enter the chice of $1: " choice
read -p "Enter the $1 love(%): " pyaar

if [[ $choice == "daya bhabhi" ]]
then
	echo "$1 is loyal"
elif [[ $pyaar -ge 100 ]]
then 
	echo "$1 is loyal"
else
	echo "$1 is not loyal"
fi
}

is_loyal $1
