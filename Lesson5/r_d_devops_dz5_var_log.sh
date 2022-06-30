#!/bin/bash
ls -lAFSh /var/log | awk '{print $5 "       " $9}' > var_log_size.txt

if [ $? -ne 0 ]; then
	echo "The error occured while listing sorted files in /var/log/ directory"
else 
	echo "Listing of sorted files in /var/log/ directory is done"
fi

