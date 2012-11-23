# Paisajes

## Objetivo
Crear un programa que lea una descripción de un paisaje y cree
como salida una imagen que contenga dicho paisaje.

## Idea
El programa se dividira en cuatro partes que pueden cambiar a futuro:

* Reconocimiento de voz usando [pocketsphinx](http://cmusphinx.sourceforge.net/wiki/)
* Analisis lexico usando flex
* Analisis sintactico usando bison
* Despligue y dibujo usando [cairo](http://www.cairographics.org/)

## Progreso
Se subio la primera version de la la gramtica que reconoce comendos como:

* un arbol chico derecha
* dos nube izquierda