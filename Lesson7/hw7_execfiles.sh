#!/bin/bash

for file in /usr/bin/* /usr/sbin/*
do
        if [ -f "$file" ] && [ -x "$file" ]
                then
                sleep 1
                echo "$file"
        fi
done
#done > executables.txt

if [ $? -ne 0 ]; then
        echo "The error occured while listing executable files in /usr/bin/ directory"
else
        echo "Listing of executable files in /usr/bin/ and /usr/sbin/ directories is done"
fi

