# Paisajes

## Objetivo
Crear un programa que lea una descripción de un paisaje y cree
como salida una imagen que contenga dicho paisaje.

## Idea
El programa se dividirá en cuatro partes  (pueden cambiar a futuro):

* Reconocimiento de voz usando sphinxpocket.
* Análisis léxico usando flex.
* Análisis sintáctico usando bison.
* Despligue y dibujo usando cairo y gtk.

## Progreso
Se subió la primera versión de la la gramática que reconoce comandos como:

* ./speech_sketch "un arbol chico izquierda"
* ./speech_sketch "dos nube derecha"
