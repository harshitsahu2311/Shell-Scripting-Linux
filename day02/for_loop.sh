#!/bin/bash

# This is a script for loop

<< comment
mkdir demo1
mkdir demo2
mkdir demo3
comment

<< task
1 - argument is the folder name
2 - start range
3 - end range
task


for (( i=$2 ; i<=$3 ; i++ ));
do
	mkdir $1$i
done
