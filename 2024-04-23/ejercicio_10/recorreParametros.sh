#!/bin/bash

nparam=0
for i in $*
do
    nparam=$((nparam+1))
    echo "Parámetro número $nparam: Valor $i"
done