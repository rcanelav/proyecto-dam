#!/bin/sh

# This is the root for other git submodules, so go to the other folders and run npm install on them
# This is a script to install all the dependencies for the project

# Loop through all the folders and run npm install
for d in */ ; do
    cd $d
    # if the name of the folder not contains the word "docs" then run npm install
    if [[ $d != *"docs"* ]]; then
        ./install.sh
    fi
    cd ..
done

clear
echo "IMPORTANT: remember to fill the backend .env with the required DDBB credentials"
read -p "Press enter to continue"