#!/bin/bash

i=0
while read line           
do           
    i=$((i+1))
    $files[$i] "$line"
done <./encryptedFiles.txt
for s in $files
do
   echo "$s"
done
