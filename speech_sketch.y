%{
	#include <stdlib.h>
	int yylex (void);
	void yyerror (char const *);
%}

%token NUMERO /* Numero de elementos a dibujar. */
%token UN DOS TRES CUATRO CINCO
%token ARBOL NUVE CASA PASTO HOMBRE MUJER NINO NINA 
%token PEQUENO MEDIANO GRANDE
%token IZQUIERDA CENTRO DERECHA
%token ROJO AZUL CAFE ROSA NEGRO VERDE AMARILLO NARANJA 

%%

cmd: cmds 	{ printf("\n cmd \n"); }
; 

cmds: numero objeto tamano posicion
   | numero objeto posicion   { printf("\n regla reconocida...\n");}
;

numero:	UN 
| TWO
;

objeto:	ARBOL
| NUVE
;

tamano:	PEQUENO 
| MEDIANO 
| GRANDE
;

posicion:	IZQUIERDA 
| CENTRO 
| DERECHA
;

color:	ROJO  
| AZUL
| CAFE
| ROSA 
| NEGRO
| VERDE 
| AMARILLO
| NARANJA
;

%%

	#include <ctype.h>

	int main(int argc, char **argv) {

	if( argc < 2 )
        {
	  printf("\n falta un argumento \n");
	  return -1;
	}
	yy_scan_string(argv[1]);
	yyparse();
	return 0;
	}

	int yyerror(char *s) {
		fprintf(stderr, "error: %s\n", s);
	}
