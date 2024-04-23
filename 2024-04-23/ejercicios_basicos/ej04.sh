#!/bin/bash
fecha=$(date)
fichero="/tmp/usuarios.log"
usuarios=$(who | cut -d" " -f1 | sort | uniq)
echo $fecha
echo $fecha >> $fichero
echo $usuarios
echo $usuarios >> $fichero