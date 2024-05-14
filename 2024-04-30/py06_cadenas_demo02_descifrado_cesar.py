#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado:https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_demo01_cifrado_cesar.md 

texto = input("Ingrese un texto: ")
texto = texto.upper()
for letra in texto:
    if letra.isalpha():
        if letra == "Z":
            print("A", end="")
        else:
            print(chr(ord(letra) + 1), end="")
print("")