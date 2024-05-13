#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py05_ciclos_lab03_piramide.md

bloques = int(input("Ingrese el número de bloques:"))
altura = 0
bloques_usados = 0

for i in range(1, bloques + 1):
    bloques_usados += i
    if bloques_usados <= bloques:
        altura += 1
    else:
        break

print("La altura de la pirámide:", altura)