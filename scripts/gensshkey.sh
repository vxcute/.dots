#!/bin/bash 

if [[ $1 = "" ]]; then 
	echo "Usage: gensshkey.sh <email>"
else 
	ssh-keygen -t rsa -b 4096 -C "$1"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa
	cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
fi 

