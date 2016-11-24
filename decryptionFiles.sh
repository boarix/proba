#!/bin/bash       
do         
    if [ "$line" != "" ]
    then
        chmod u+x $line
        echo $1
        var=$(openssl aes-256-cbc -d -in $line -k $1)
        echo $var
    fi
done <./encryptedFiles.txt
