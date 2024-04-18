#!/bin/bash
function ayuda {
    echo "Uso: $0 operacion num1 num2"
    echo "Operaciones válidas: suma, resta, multiplica, divide"
}

# Salimos si no hay tres parámetros
if [ $# -ne 3 ]; then
    ayuda
    exit 1
fi

# Salimos si el primer parámetro no es una operación válida
if [ $1 != "suma" ] && [ $1 != "resta" ] && [ $1 != "multiplica" ] && [ $1 != "divide" ]; then
    echo -e "ERROR: Operación no válida\n"
    ayuda
    exit 1
fi

case $1 in
    suma)
        bc <<< "$2 + $3"
        ;;
    resta)
        bc <<< "$2 - $3"
        ;;
    multiplica)
        bc <<< "$2 * $3"
        ;;
    divide)
        bc <<< "scale=2; $2 / $3"
        ;;
esac