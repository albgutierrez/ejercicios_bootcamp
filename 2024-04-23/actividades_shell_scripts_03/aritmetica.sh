#!/bin/bash

function Error() {
    echo "Error $1: $2"
    exit $1
}

if [ $# -ne 2 ]; then
    Error 1 "Debe introducir dos numeros"
fi

echo "Suma: $(($1 + $2))"
echo "Resta: $(($1 - $2))"
echo "Multiplicacion: $(($1 * $2))"