#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py02_operadores_lab02_modulo_horas_minutos.md
from datetime import datetime, timedelta 

hora_inicio = int(input("Hora de inicio (horas): "))
minuto_inicio = int(input("Minuto de inicio (minutos): "))
duración_del_evento = int(input("Duración del evento (minutos): "))

str_hora_inicial = f"{hora_inicio}:{minuto_inicio}"

try:
    hora_inicial = datetime.strptime(str_hora_inicial, "%H:%M")
    delta = timedelta(minutes=duración_del_evento)
    hora_final = hora_inicial + delta
    print(f"La hora de finalización del evento es: {hora_final.time()}")
except:
    print("No se puede realizar el cálculo, ha introducir un valor incorrecto.")
