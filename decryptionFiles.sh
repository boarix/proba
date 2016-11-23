#!/bin/bash

while read line           
do           
    openssl aes-256-cbc -d -in $line -k $1
done <./encryptedFiles.txt
