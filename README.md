
# Paisajes

## Objetivo
Crear un programa que lea una descripción de un paisaje y cree
como salida una imagen que contenga dicho paisaje.

## Idea
El programa se dividira en cuatro partes que pueden cambiar a futuro:

* Reconocimiento de voz usando sphinxpocket
* Analisis lexico usando flex
* Analisis sintactico usando bison
* Despligue y dibujo usando cairo y gtk

## Progreso
Se subio la primera version de la la gramtica que reconoce comandos como:

* ./speech_sketch "un arbol chico izquierda"
* ./speech_sketch "dos nube derecha"
