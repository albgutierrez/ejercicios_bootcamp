#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py07_funciones_lab03_d%C3%ADa_del_a%C3%B1o.md

def is_year_leap(year):
    if year % 4 == 0 and year % 100 != 0 or year % 400 == 0:
        return True
    else:
        return False


def days_in_month(year, month):
    if month < 1 or month > 12:
        return None

    dias_por_mes = {
            1: 31,
            2: 29 if is_year_leap(year) else 28,
            3: 31,
            4: 30,
            5: 31,
            6: 30,
            7: 31,
            8: 31,
            9: 30,
            10: 31,
            11: 30,
            12: 31
        }
    return dias_por_mes[month]

def day_of_year(year, month, day):
    if month < 1 or month > 12:
        return None
    if day < 1 or day > days_in_month(year, month):
        return None
    
    for i in range(1, month):
        day += days_in_month(year, i)
    
    return day

print(day_of_year(2000, 12, 31))