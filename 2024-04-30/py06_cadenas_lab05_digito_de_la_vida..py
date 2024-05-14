#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab05_digito_de_la_vida.md

f_nacimiento = input("Ingrese su fecha de nacimiento (formato AAAAMMDD): ")
numero_de_la_vida = f_nacimiento
while len(numero_de_la_vida) > 1:
    suma=0
    for digito in numero_de_la_vida:
        suma=suma+int(digito)
    numero_de_la_vida=str(suma)
print("Su número de la vida es:", numero_de_la_vida)

