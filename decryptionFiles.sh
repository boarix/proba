#!/bin/bash

while read line           
do         
    if [ "$line" != "" ]
    then
        openssl aes-256-cbc -d -in $line -k $1
    fi
done <./encryptedFiles.txt
