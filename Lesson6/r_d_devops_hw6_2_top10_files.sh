#!/bin/bash

# Output rowcount from file usr_executable.txt
wc -l < usr_executable.txt

# Writing names of the top ten files from file usr_executable.txt into the file cmd_names.txt
exec 5< usr_executable.txt

for f in `seq 10`; do
    read line <&5
    filename=`basename $line`    
    echo $filename 
done > cmd_names.txt

