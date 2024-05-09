#!/bin/bash

read -p "Select root directory: " directory

if [ -z "$directory" ]; then
    directory="$HOME"
fi

if [ ! -d "${directory}/Desktop" ]; then
    cd "${directory}"
    mkdir Desktop
fi

cd "${directory}/Desktop"

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

