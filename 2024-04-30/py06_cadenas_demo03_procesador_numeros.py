#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_demo03_procesador_numeros.md

linea = input("Ingresa una línea de números, sepáralos con espacios: ")
strings = linea.split() 
total = 0

try:
    for substr in strings:  
        total += float(substr)
    print("El total es:", total)
except:
    print(substr, "no es un numero.")