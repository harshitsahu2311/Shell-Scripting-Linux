#!/bin/bash

# Disclaimer: this is for educational purpose only


read -p "Enter the choice of jethalal: " choice
read -p "Enter the jetha love(%): " pyaar

if [[ $choice == "daya bhabhi" ]]
then
	echo "jetha is loyal"
elif [[ $pyaar -ge 100 ]]
then 
	echo "jetha is loyal"
else
	echo "jetha is not loyal"
fi
