#!/bin/bash

echo | openssl aes-256-cbc -d -in ./jakistam.py -k tralala
while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        chmod u+x $line
        var=$(<$line)
        echo | openssl aes-256-cbc -d -in $line -k '$1'
    fi
done <./encryptedFiles.txt
