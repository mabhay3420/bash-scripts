#!/bin/bash
 # remove spaces first
 #This script reads file names in current directory within 
 #specified depth and changes the names as described below:
 #It first converts space to _ and then converts them to lowercase **RECURSIVELY**.
if [ $# -eq 0 ]
then
	depth=1
elif [ $# -eq 1 ]
then
	depth=$1
elif [ $# -eq 2 ]
then
	opt=$1
	depth=$2
fi
read -p "Some programs may depend on file names. Continue[y/n]: " answer
if [ $answer = "n" ]
then
	exit 1
fi
find -maxdepth $depth -name "* *" -print0 | sort -rz | \
while read -d $'\0' f; do 
	mv $opt "$f" "$(dirname "$f")/$(basename "${f// /_}")";
done
find -maxdepth $depth -name "*" -print0 | sort -rz | \
while read -d $'\0' f;do
	file_name=$(echo $(basename "$f") | tr A-Z a-z)
	if [ $file_name = $(basename "$f") ]
	then
		continue
	fi
	mv $opt "$f" "$(dirname "$f")/$file_name";
done
