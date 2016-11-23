#!/bin/sh

while read line           
do         
    echo "POKAZ CO SIE DZIEJE!!!!"
    if [ "$line" != "" ]
    then
        chmod +wr $line
        openssl aes-256-cbc -d -in $line -k $1 >> T
        $T>$line
    fi
done <./encryptedFiles.txt
