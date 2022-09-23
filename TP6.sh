#!/bin/bash

var=0

while [ $var -ne $1 ]
do
var=$((var+1))
echo $var
done
