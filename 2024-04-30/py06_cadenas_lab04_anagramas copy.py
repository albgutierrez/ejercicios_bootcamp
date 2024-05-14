#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab04_anagramas.md 

palabra1 = str(input("Ingrese la primera palabra: ")).upper().replace(" ", "")
palabra2 = str(input("Ingrese la segunda palabra: ")).upper().replace(" ", "")

if sorted(palabra1) == sorted(palabra2) and palabra1 != "":
    print("Las palabras son anagramas")
else:
    print("Las palabras no son anagramas")