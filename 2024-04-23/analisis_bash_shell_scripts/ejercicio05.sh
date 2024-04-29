#!/bin/bash
#
# Desc.: Muestra información de cada usuario del sistema
# Autor: Javier Pedrero Martín - javier@educatica.es
# Fecha: Marzo 2021
function error () {
    echo "[ERROR] - $1"
    exit 1
}

if [ $(id -u) -ne 0 ]; then
    error "El script se debe ejecutar como root"
fi

for usuario in $(grep -w /bin/bash$ /etc/passwd | cut -d: -f1 | grep -vw root | sort); do
    homeDir=$(grep -w ^$usuario /etc/passwd | cut -d: -f6)
    echo $usuario - $homeDir
    du -sh $homeDir
    ls -ld $homeDir
    if ls $homeDir/*.sh &> /dev/null; then
        ls $homeDir/*.sh
    else
        echo "No hay ficheros con extensión sh"
    fi
    echo
done
