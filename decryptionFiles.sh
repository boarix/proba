#!/bin/bash

i=-1
while read line           
do           
    i=$((i+1))
    files[$i]=xdg-open $line
done <./encryptedFiles.txt
for s in $files
do
   echo "$s"
done
