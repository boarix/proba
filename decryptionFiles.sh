#!/bin/bash

while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        openssl aes-256-cbc -d -in "$line" -k $1
    fi
done <./encryptedFiles.txt
