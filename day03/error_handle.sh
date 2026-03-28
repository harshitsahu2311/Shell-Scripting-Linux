#!/bin/bash

# this is a error handling file

function create_directory() {
	mkdir demo
}

if !(create_directory); then
	echo "The code is being exited as the directory already exist, please delete it"
	exit 1
fi
