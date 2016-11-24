#!/bin/bash       
while read line
do         
    if [ "$line" != "" ]
    then
        chmod u+x $line
        echo $1
        openssl aes-256-cbc -d -in $line -k $1 > $line
    fi
done <./encryptedFiles.txt
