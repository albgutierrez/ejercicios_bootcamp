#! /bin/bash
#
# Autor: Javier Pedrero Martín - javier@educatica.es
# Fecha: Febrero 2019
#
# ....

echo "Nombre del comando/script: $0"
echo "Número de parámetros pasados: $#"
echo
echo "Parámetro 1: $1"
echo "Parámetro 2: $2"
echo "Parámetro 3: $3"
echo "Parámetro 4: $4"
echo "Parámetro 5: $5"
echo "Parámetro 6: $6"
echo "Parámetro 7: $7"
echo "Parámetro 8: $8"
echo "Parámetro 9: $9"
echo
echo "Cadena con todos los parámetros a partir del 1: $*"
echo "Array de parámetros, cada uno una cadena: $@"
echo
echo "Valor de retorno del último comando: $?"
echo "PID del último proceso lanzado en segundo plano: $!"
echo "PID del proceso actual: $$"
echo "Parámetros pasados al último script o comando ejecutado: $_"
echo "Parámetros especiales de bash: $-"
