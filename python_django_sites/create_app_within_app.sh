#!/bin/bash
import re

echo "make sure virtual environment is activated before you continue"
echo "enter 1 if yes and 2 if virtual enviroment is not activated"
# get useer input and store it in a variable called in_venv
read in_venv
if[["$in_venv" == "1"]]; then
# proceed to create the new app
# as the user the name for the new app
    echo "good to go, please"
    echo "enter the app name"
elif[["$in_venv" == "2"]]; then
#Acivate virtual environments
    echo "activating the virtual environment"
    source venv/bin/activated
else
#print error message
    echo "Invalid input. "
    fi

python3 manage.py startapp
