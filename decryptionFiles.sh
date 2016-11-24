#!/bin/bash

while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        chmod u+x $line
        T=$(openssl aes-256-cbc -d -in $line -k $1)
        echo $T
        $T>$line
    fi
done <./encryptedFiles.txt
