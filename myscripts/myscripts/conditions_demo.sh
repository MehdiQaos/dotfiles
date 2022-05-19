#! /usr/bin/bash

count=10
if [ $count -ne 9 ]
then
    echo "ture"
else
    echo "false"
fi

count=0
while [ $count -lt 10 ]
do
    echo $count
    count=$(( count+1 ))
done