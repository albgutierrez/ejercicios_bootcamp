#!/bin/bash
source funciones.sh

if [ $# -ne 1 ]; then
    Error 1 "Debe introducir un numero"
fi

for i in $(seq 1 10); do
    echo "$1 x $i = $(($1 * $i))"
done