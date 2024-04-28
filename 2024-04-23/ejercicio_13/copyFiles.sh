#!/bin/bash

function Error() {
    echo "Error: $1"
    echo
    echo "Uso: $0 ruta_origen ruta_destino usuario"
    exit 1
}

# Comprobamos si el usuario que ejecuta el script es root
if [ $EUID -ne 0 ]
then
    Error "El script debe ejecutarse con permisos de root"
fi

# Los próximos tres IF comprueban si hemos pasado el número de parámetros correctos
# y personalizan el mensaje de error en función de los que falten. 
if [ $# -lt 1 ]
then
    Error "Número de parámetros incorrecto. Faltan ruta_origen, ruta_destino y usuario"
fi

if [ $# -lt 2 ]
then
    Error "Número de parámetros incorrecto. Faltan ruta_destino y usuario"
fi

if [ $# -lt 3 ]
then
    Error "Número de parámetros incorrecto. Falta indicar el nombre del usuario"
fi

rutaOrigen=$1
rutaDestino=$2
usuario=$3

# Comprobamos si el usuario existe
if [ ! $(id $usuario) > /dev/null 2>&1 ]
then
    Error "El usuario $usuario no existe"
fi

# Comprobamos si la ruta de origen existe
if [ ! -d $rutaOrigen ]
then
    Error "La ruta de origen no existe. No se puede continuar"
fi

# Comprobamos si la ruta de destino existe
if [ ! -d $rutaDestino ]
then
    mkdir -p $rutaDestino
    chown $usuario $rutaDestino
fi

for fichero in $(ls $rutaOrigen)
do
    rutaFichero=$rutaOrigen/$fichero
    # Si es un fichero...
    if [ -f $rutaFichero ]
    then
        cp $rutaFichero $rutaDestino
        chown $usuario $rutaFichero
        chmod 700 $rutaFichero
        continue
    fi

    # si es un directorio...
    if [ -d $rutaFichero ]
    then
        echo "[D] - $fichero"
        continue
    fi
    # si es un fichero de bloques...
    if [ -b $rutaFichero ]
    then
        echo "[B] - $fichero"
        continue
    fi  

    echo "Tipo de fichero desconocido: $fichero"
done
