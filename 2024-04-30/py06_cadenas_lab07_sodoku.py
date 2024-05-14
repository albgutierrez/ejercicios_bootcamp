#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Enunciado: https://github.com/hchocobar/curso_python/blob/master/labs/py06_cadenas_lab07_sodoku.md

def es_sudoku_valido(tablero):
    # Función para verificar si una lista contiene los números del 1 al 9 sin repetirse
    def es_conjunto_valido(conjunto):
        return sorted(conjunto) == list(range(1, 10))

    # Verificar todas las filas
    for fila in tablero:
        if not es_conjunto_valido(fila):
            return False

    # Verificar todas las columnas
    for col in range(9):
        columna = [tablero[fila][col] for fila in range(9)]
        if not es_conjunto_valido(columna):
            return False

    # Verificar todas las subcuadrículas 3x3
    for fila in range(0, 9, 3):
        for col in range(0, 9, 3):
            subcuadricula = []
            for i in range(3):
                for j in range(3):
                    subcuadricula.append(tablero[fila + i][col + j])
            if not es_conjunto_valido(subcuadricula):
                return False

    # Si todas las filas, columnas y subcuadrículas son válidas, el Sudoku es válido
    return True

def fila_sudoku(fila):
    # Introducimos los números de la fila en una lista
    lista = []
    for c in str(fila):
        lista.append(int(c))
    return lista

def leer_sudoku():
    # Leer las 9 filas del Sudoku
    sudoku = []
    for i in range(0, 9):
        fila = str(input())
        if len(fila) != 9:
            print("La fila debe tener 9 elementos")
            exit
        if not fila.isdigit():
            print("La fila debe contener solo números")
            exit
        sudoku.append(fila_sudoku(fila))
    return sudoku

    
def sudoku_prueba_1():
    # Sudoku correcto de prueba
    sudoku_prueba = []
    sudoku_prueba.append(fila_sudoku("295743861"))
    sudoku_prueba.append(fila_sudoku("431865927"))
    sudoku_prueba.append(fila_sudoku("876192543"))
    sudoku_prueba.append(fila_sudoku("387459216"))
    sudoku_prueba.append(fila_sudoku("612387495"))
    sudoku_prueba.append(fila_sudoku("549216738"))
    sudoku_prueba.append(fila_sudoku("763524189"))
    sudoku_prueba.append(fila_sudoku("928671354"))
    sudoku_prueba.append(fila_sudoku("154938672"))
    return sudoku_prueba                       

def sudoku_prueba_2():
    # Sudoku incorrecto de prueba
    sudoku_prueba = []
    sudoku_prueba.append(fila_sudoku("195743862"))
    sudoku_prueba.append(fila_sudoku("431865927"))
    sudoku_prueba.append(fila_sudoku("876192543"))
    sudoku_prueba.append(fila_sudoku("387459216"))
    sudoku_prueba.append(fila_sudoku("612387495"))
    sudoku_prueba.append(fila_sudoku("549216738"))
    sudoku_prueba.append(fila_sudoku("763524189"))
    sudoku_prueba.append(fila_sudoku("928671354"))
    sudoku_prueba.append(fila_sudoku("254938672"))
    return sudoku_prueba                       

sudoku_prueba=leer_sudoku()

if es_sudoku_valido(sudoku_prueba):
    print("Yes")
else:
    print("No")