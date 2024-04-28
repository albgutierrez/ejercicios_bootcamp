#!/bin/bash
echo "Introduce el nombre de un fichero: "
read fichero

until [ -z $fichero ];
do
    if [ -e $fichero ] # Comprobamos si existe la ruta
    then
        permisos=$(ls -ld $fichero | cut -d " " -f 1)
        echo "$fichero - $permisos"

        if [ -f $fichero ]; then # Si es un fichero, hacemos un cat para mostrar el contenido
            echo -e "\n ==== CONTENIDO DEL FICHERO ===="
            cat $fichero
            echo -e "\n==== FIN DEL CONTENIDO DEL FICHERO ===="
        elif [ -d $fichero ]; then # Si es un directorio, hacemos un ls para mostrar el contenido
            ls $fichero
        else
            echo "No se puede mostrar el contenido de $fichero"
        fi

        if [ -r $fichero ]; then
            echo "Tenemos permisos de lectura en el fichero $fichero"
        fi

        if [ -w $fichero ]; then
            echo "Tenemos permisos de escritura en el fichero $fichero"
        fi

        if [ -x $fichero ]; then
            echo "Tenemos permisos de ejecución en el fichero $fichero"
        fi
    else
        echo "No existe el fichero $fichero"
    fi

    read fichero
done