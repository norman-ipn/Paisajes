/* Cosas por agregar: 1) Hacer su respectiva gramatica.l (implementar FLEX); 2)    */


%{
#include <stdio.h>
#define YYSTYPE char /* todos los tokens son cadenas */ 
%}

%token ENTORNO QUITAR
%token BOSQUE CIUDAD ARBOL CASA PASTO HOMBRE MUJER NINO NINA
%token ROJO AZUL CAFE ROSA NEGRO VERDE 
%token GRANDE NORMAL PEQUENO
%token UN UNA DOS TRES CUATRO CINCO

%%

sentencia: reservada variable /* eg: entorno ciudad; quitar casa */ 
	| cantidad variable especificacion  /* eg: un arbol grande; una casa roja */ 
	| variable especificacion /* eg: pasto pequeño: hombre grande */ 
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

%%




