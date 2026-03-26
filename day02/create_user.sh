#!/bin/bash

#read -p "Enter your username: " username
echo "You entered $1"

sudo useradd -m $1
echo "New user with name $1 is created"
