#!/bin/bash
cat /etc/passwd | grep /bin/bash | cut -d":" -f1 | sort

# 1. ¿Cuántos comandos se han ejectado? 
## Se han ejecutado 4 comandos
# 2. ¿Tiene sentido hacer este script para ejecutar únicamente este comando?.¿Porqué?
## Si, porque es un comando muy largo de teclear
