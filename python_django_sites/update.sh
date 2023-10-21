#!/bin/bash
#get the name of the Django app from user

read -p "enter the project directory name:- " app_directory
if [[$app_directory =~ "[^a-zA-Z0-9 .,_-]"]]; then
    echo "the folder name is not safe."
    exit 1
fi
#if all is good then make the directory

mkdir -p "$app_directory"
cd "$app_directory"
echo "creating a virtual environment in the working directory and activating it"
python3 -m venv venv

source venv/bin/activate

echo "download django"
python3 -m pip install Django

pip install --upgrade pip

read -p "enter the name of your Django app: " app_name
# check if the app_name is safe
if [[$app_directory =~ "[^a-zA-Z0-9 .,_-]"]]; then
    echo "the folder name is not safe."
    exit 1
fi
# if all is good then make the app
echo "now creating your project with the name $app_name"
django-admin startproject $app_name .
# create a script file to create other apps within this project.
cp ../create_app_within_app.sh newApp.sh
#make newApp.sh executable
chmod +x newApp.sh
# Apply all migrations
python manage.py migrate
#open a new terminal to continue working on the app
echo "Open a new terminal to continue working on the app."
echo "if you need to create other apps or pages please run './newApp.sh'"
echo "make sure to reactivate the virtual environment in the new terminal by running 'source venv/bin/activate' "

#run the server
python3 manage.py runserver

