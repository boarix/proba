#!/bin/sh

while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        echo openssl aes-256-cbc -d -in $line -k $1 > $line
    fi
done <./encryptedFiles.txt
