#!/bin/bash

# sleep permet de mettre un delai
i=0
while [ $i -ne $1 ]
do
    i=$(($i+$2))
    echo $i
    sleep $2
done
