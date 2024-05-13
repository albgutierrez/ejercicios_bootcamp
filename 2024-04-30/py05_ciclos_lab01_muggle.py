#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py05_ciclos_lab01_muggle.md

numero_secreto=111

numero = 0
while int(numero) != numero_secreto:
    numero=input("Introduce un número entero: ")
    if int(numero) == numero_secreto:
        print("¡Bien hecho, muggle! Eres libre ahora")
    else:
        print("¡Ja, ja! ¡Estás atrapado en mi ciclo!")