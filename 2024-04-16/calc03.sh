#!/bin/bash
function ayuda {
    echo -e "Uso: $0 \"num1 operacion num2"
    echo "Operacion válidas: + - / *"
}

# Salimos si el numero de parámetros no es 1
if [ $# -ne 1 ]; then
    ayuda
    exit 1
fi

# Calculo
bc <<< "scale=2; $1"