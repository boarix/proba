#!/bin/bash

echo | openssl aes-256-cbc -d -in ./jakistam.py -k tralala
while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        chmod u+x $line
        echo $0
        echo | openssl aes-256-cbc -d -in $line -k tralala
    fi
done <./encryptedFiles.txt
