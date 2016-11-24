#!/bin/bash       
while read line
do         
    if [ "$line" != "" ]
    then
        chmod u+x $line
        var=$(openssl aes-256-cbc -d -in $line -k $1)
        echo "poiuytrewq"
        echo "$var" > "$line"
    fi
done <./encryptedFiles.txt
