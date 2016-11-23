#!/bin/sh

while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    f= $line
    if [ "$line" != "" ]
    then
        openssl aes-256-cbc -d -in "$line" -k $1 > "$line"
    fi
done <./encryptedFiles.txt
