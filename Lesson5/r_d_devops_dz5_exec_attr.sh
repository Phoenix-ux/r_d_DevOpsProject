#!/bin/bash

for file in /usr/bin/*
do
	if [ -f "$file" ] && [ -x "$file" ]
then
	echo "$file"
fi
done > executable.txt

if [ $? -ne 0 ]; then
	echo "The error occured while listing executable files in /usr/bin/ directory"
else 
	echo "Listing of executable files in /usr/bin/ directory is done"
fi
