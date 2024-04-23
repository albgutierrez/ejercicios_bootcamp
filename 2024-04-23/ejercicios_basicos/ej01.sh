#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Uso: $0 nombre estudios"
    exit 1
fi

cat << EOF
Hola, me llamo $1 y estoy estudiando $2.

Este es un programa básico que solo muestra información.

La utilidad de este tipo de programas básicos es poder ejecutar varios comandos, uno detrás de otro.

Podemos escribir una lista de comandos o llamadas a aplicaciones en orden y el interprete de comandos o shell se encargará de ejecutarlos uno a uno.

Muchas gracias por tu atención.

Un saludo,

$1.
EOF