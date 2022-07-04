#!/bin/bash

# Writing all the .py files into the file "py_scripts" and writing all the errors into the file "py_errors"  

find / -name "*.py" 2> py_errors 1> py_scripts

