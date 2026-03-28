#!/bin/bash

<< task
Deploy a django application
and handle the code for errors
task

function code_clone() {
	echo "Cloning the code"
	git clone https://github.com/harshitsahu2311/Django-Notes-app.git
}

function required_dependencies() {
	echo "Installing the Dependencies"
	sudo apt-get update
	sudo apt install docker.io nginx -y
}

function restarts() {
	echo "Restarting the dependencies"
	sudo usermod -aG docker $USER 
	sudo systemctl enable docker
	sudo systemctl enable nginx
}

function deploy() {
	echo "Deployment of docker"
	cd Django-Notes-app
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "************** STARTING DEPLOYMENT ***********************"
if !(code_clone); then 
	echo "The code repo already exist"
	cd Django-Notes-app
fi

if !(required_dependencies); then
	echo "Installation failed"
	exit 1
fi

if !(restarts); then
	echo "Systemc fault identified"
	exit 1
fi

if !(deploy); then
	echo "Container already exist"
	docker ps
	exit 1
fi

echo "************** DEPLOYMENT IS DONE ************************"
