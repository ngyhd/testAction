#!/bin/bash
echo "Hello World !"
FILES=$(ls)
for loop in $FILES
do
    echo "The value is: $loop"
done
