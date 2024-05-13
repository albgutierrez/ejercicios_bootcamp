#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py05_ciclos_lab04_hipotesis_de_collatz.md

contador = 0
muestra=int(input("Introduce un número entero: "))

if muestra < 1:
    print("El número debe ser mayor que 0.")
    exit()

while muestra != 1:
    contador += 1
    if muestra % 2 == 0:
        muestra = muestra // 2
    else:
        muestra = muestra * 3 + 1
    print(muestra)
print("Pasos:", contador)