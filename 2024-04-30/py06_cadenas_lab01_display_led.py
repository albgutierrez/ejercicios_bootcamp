#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab01_display_led.md

cero = []
cero.append("###")
cero.append("# #")
cero.append("# #")
cero.append("# #")
cero.append("###")

uno = []
uno.append("  #")
uno.append("  #")
uno.append("  #")
uno.append("  #")
uno.append("  #")

dos = []
dos.append("###")
dos.append("  #")
dos.append("###")
dos.append("#  ")
dos.append("###")

tres = []
tres.append("###")
tres.append("  #")
tres.append("###")
tres.append("  #")
tres.append("###")

cuatro = []
cuatro.append("# #")
cuatro.append("# #")
cuatro.append("###")
cuatro.append("  #")
cuatro.append("  #")

cinco = []
cinco.append("###")
cinco.append("#  ")
cinco.append("###")
cinco.append("  #")
cinco.append("###")

seis = []
seis.append("###")
seis.append("#  ")
seis.append("###")
seis.append("# #")
seis.append("###")

siete = []
siete.append("###")
siete.append("  #")
siete.append("  #")
siete.append("  #")
siete.append("  #")

ocho = []
ocho.append("###")
ocho.append("# #")
ocho.append("###")
ocho.append("# #")
ocho.append("###")

nueve = []
nueve.append("###")
nueve.append("# #")
nueve.append("###")
nueve.append("  #")
nueve.append("###")

numero=input("Introduzca un número entero: ")
if int(numero) < 1:
    print("El número debe ser positivo")
    exit()

for i in range(5):
    linea = ""
    for digito in numero:
        if digito == "0":
            linea += cero[i] + "  "
        elif digito == "1":
            linea += uno[i] + "  "
        elif digito == "2":
            linea += dos[i] + "  "
        elif digito == "3":
            linea += tres[i] + "  "
        elif digito == "4":
            linea += cuatro[i] + "  "
        elif digito == "5":
            linea += cinco[i] + "  "
        elif digito == "6":
            linea += seis[i] + "  "
        elif digito == "7":
            linea += siete[i] + "  "
        elif digito == "8":
            linea += ocho[i] + "  "
        elif digito == "9":
            linea += nueve[i] + "  "
    print(linea)