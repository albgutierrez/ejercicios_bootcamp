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
        echo $(./suma $2 $3)
        ;;
    resta)
        echo $(./resta $2 $3)
        ;;
    multiplica)
        echo $(./multiplica $2 $3)
        ;;
    divide)
        echo $(./division $2 $3)
        ;;
esac