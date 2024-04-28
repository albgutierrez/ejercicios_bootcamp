#!/bin/bash

function Error() {
    echo "Error: $1"
    echo -e "\nUso: $0 operando1 operador operando2"
    echo "El operador puede ser + - * / %"
    echo "Importante: El operador debe ir entre comillas dobles"
    echo -e "\nEjemplo: $0 2 '*' 3"
    exit 1
}

if [ $# -lt 1 ]
then
    Error "Número de parámetros incorrecto. Faltan operando1, operador y operando2"
fi

if [ $# -lt 2 ]
then
    Error "Número de parámetros incorrecto. Faltan operador y operando2"
fi

if [ $# -lt 3 ]
then
    Error "Número de parámetros incorrecto. Falta operando2"
fi

case $2 in
    "+")
        echo "Resultado: $(($1 + $3))"
        ;;
    "-")
        echo "Resultado: $(($1 - $3))"
        ;;
    "*")
        echo "Resultado: $(($1 * $3))"
        ;;
    "/")
        echo "Resultado: $(($1 / $3))"
        ;;
    "%")
        echo "Resultado: $(($1 % $3))"
        ;;
    *)
        Error "Operador $2 no reconocido"
        ;;
esac