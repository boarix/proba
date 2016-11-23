#!/bin/bash

echo $1
while read line           
do           
    echo $line
    openssl aes-256-cbc -d -in $line -k $1 > $line
done <./encryptedFiles.txt
