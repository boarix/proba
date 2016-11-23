#!/bin/bash

while read line           
do           
    openssl aes-256-cbc -d $line -k $1 > $line
done <./encryptedFiles.txt
