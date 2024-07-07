#!/bin/bash

################################################### Get the root directory ###################################################

# Prompt the user to select the root directory with a timeout of 3 minutes (180 seconds)
read -t 180 -p "Select root directory: " directory

# If no input provided or timeout occurred, set the directory to the user's home directory
if [ -z "$directory" ]; then
    directory="$HOME"
fi

# Change to the root directory
cd "${directory}"

################################################### Check Store directories ##################################################

# Check if the Desktop directory exists
if [ ! -d "${directory}/Desktop" ]; then
    mkdir Desktop
fi

##################################################### Download directory #####################################################

# Check if the Downloads directory exists
# If it isn't immediately in the root directory, search for it
if [ -d "${directory}/Downloads" ]; then
    cd "${directory}/Downloads"
else
    found=$(find "${directory}" -type d -name "Downloads" -print -quit)
    if [ -n "$found" ]; then
        cd "$found"
    else
        echo "Downloads directory not found."
        exit 1
    fi
fi



# Code to be revised

if [ ! -d "Certificates" ]; then
    mkdir Certificates
fi

if [ -d "${directory}/Downloads" ]; then
    cd "${directory}/Downloads"
else
    cd "${directory}/Transferências"
fi

find . \( -name "*.tar" -o -name "*.zip" \) -delete

find . -name "*[Cc]ertificado*" -exec mv -t $directory/Desktop/Certificates {} +
find . -type f -exec grep -li -E "certificate?s|certificado?s" {} +
find . -type f -exec grep -liE "Certificate?s|Certificado?s" {} \; -exec mv -t "$directory/Desktop/Certificates" {} +

