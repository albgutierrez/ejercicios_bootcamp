#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab06_encuentra_la_palabra.md

palabra = str(input("Ingrese la palabra: ")).upper()
texto = str(input("Ingrese el texto: ")).upper()

indice_palabra = 0
encontrado = False
for char in texto:
        # Si el carácter actual de la combinación coincide con el carácter actual de la palabra
        if char == palabra[indice_palabra]:
            # Avanzamos al siguiente carácter de la palabra
            indice_palabra += 1
            # Si hemos llegado al final de la palabra, significa que todos los caracteres han sido encontrados
            if indice_palabra == len(palabra):
                encontrado = True
                break

if encontrado:
    print("Si")
else:
    print("No")
                