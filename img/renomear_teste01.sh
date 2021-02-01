#!/bin/bash

img=(`sudo ls | grep -v png | grep -v teste`)

count=14

for ((i=0; i < ${#img[@]}; i++));
do
    count=` expr $count + 1`;
    mv ${img[$i]} ${img[$i]}.png
    echo $count;
done


