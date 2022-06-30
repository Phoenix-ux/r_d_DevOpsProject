#!/bin/bash

for file in /etc/*
do
	if [ -d "$file" ]
then
	echo "$file"
fi
done > etc_dir.txt

if [ $? -ne 0 ]; then
	echo "The error occured while listing subdirectories of the /etc/ directory"
else 
	echo "Listing of subdirectories of the /etc/ directory is done"
fi


