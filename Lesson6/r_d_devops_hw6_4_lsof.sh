#!/bin/bash

# writing PID, FD, TYPE(of File Descriptor), NAME(of File) of all the Opened Files for current user into the file OpenedFiles_for_[USER].txt

lsof -u $USER | awk '{print $2 "       " $4 "       " $5 "       " $9 }' > OpenedFiles_for_$USER.txt

