#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab02_cifrado_cesar_mejorado.md

texto = input("Ingrese un texto: ")
desplazamiento = int(input("Valor de desplazamiento: "))
for letra in texto:
    if letra.isalpha():
        if letra.isupper():
            nueva_letra = chr((ord(letra) - ord('A') + desplazamiento) % 26 + ord('A'))
        else:
            nueva_letra = chr((ord(letra) - ord('a') + desplazamiento) % 26 + ord('a'))
        print(nueva_letra, end="")
    else:
        print(letra, end="")
print("")