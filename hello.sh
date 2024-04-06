#!/bin/bash
echo "Hello World !"
ls -l
FILES=$(ls -l)
for loop in $FILES
do
    echo "The value is: $loop"
done
