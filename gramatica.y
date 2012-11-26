/* Cosas por agregar: 1) Hacer su respectiva gramatica.l (implementar FLEX); 2)    */


%{
#include <stdio.h>
#define YYSTYPE char /* todos los tokens son cadenas */ 
%}

%token ENTORNO QUITAR
%token BOSQUE CIUDAD ARBOL CASA PASTO HOMBRE MUJER NINO NINA
%token ROJO AZUL CAFE ROSA NEGRO VERDE AMARILLO NARANJA 
%token GRANDE NORMAL PEQUENO
%token UN UNA DOS TRES CUATRO CINCO
/* %token IZQUIERDA CENTRO DERECHA */ 

%%

sentencia: reservada variable /* eg: entorno ciudad; quitar casa */ 
	| cantidad variable especificacion  /* eg: un arbol grande; una casa roja */ 
	| variable especificacion  /* eg: pasto pequeño: hombre grande */ 
/*	| cantidad variable especificacion posicion  eg: un arbol grande a la derecha; una casa roja al centro */
/*	| variable especificacion posicion eg: pasto pequeño izquierda; hombre grande a la izquierda */ 
	;

reservada: ENTORNO 
	| QUITAR
	;

variable: BOSQUE
	| CIUDAD
	| ARBOL
	| CASA
	| PASTO
	| HOMBRE
	| MUJER
	| NINO
	| NINA
	;

especificacion: color
	| tamano
	;

cantidad: numero
	;

color:    ROJO
	| AZUL
	| CAFE
	| ROSA
	| NEGRO
	| VERDE
	| AMARILLO
	| NARANJA
	;

tamano:   GRANDE
	| NORMAL
	| PEQUENO
	;

numero:   UN
	| UNA
	| DOS
	| TRES
	| CUATRO
	| CINCO
	;

/* posicion:   DERECHA  */
/*	   |   CENTRO   */
/*	   |   IZQUIERDA*/

%%




