#!/bin/bash
## Script que muestra información del usuario
#
# Autor: Alberto Gutierrez - 2024-04-25

echo "Nombre de usuario: $(whoami)"
echo "Info del usuario: $(id)"
echo "Directorio personal del usuario: $HOME"
echo "Permisos del directorio $HOME: $(stat -c '%A' $HOME)"
ls $HOME
