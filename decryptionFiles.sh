#!/bin/bash

fileOfFiles = './encryptedFiles.txt'
files[0] = ''
while read -r line
do
  echo $line
done < "$fileOfFiles"
