#!/bin/bash

# 02. – Función eligeOpcion
function eligeOpcion
{
    num=$1
    echo $1 $2 $num
    while [[ $num -ge $1 && $num -le $fin ]];
    #while [ $num -ge $1 ] && [ $num -le $fin ];
    do
        echo "Escriba un numero: "
        read num
    done
}

inicio=100
fin=200
eligeOpcion inicio fin
