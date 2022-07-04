#!/bin/bash

# Writing list of readable & executable files from /usr/sbin/ directory into the file usr_executables.txt

for file in /usr/sbin/*
do
	if [ -f "$file" ] && [ -x "$file" ] && [ -r "$file" ]
then
	echo "$file"
fi
done > usr_executable.txt

