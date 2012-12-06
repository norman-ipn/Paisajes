%{


#include <stdio.h>
#include "sketch.h"

Shape shape;


%}


%token UN DOS
%token ARBOL NUBE BICI GATO PAJARO CONEJO CASA HOMBRE MUJER
%token CHICO MEDIANO GRANDE
%token IZQUIERDA CENTRO DERECHA


%%


cmd: cmds		{ create_shape(&shape); }
;
cmds: number shape size pos
| number shape pos
;

number:	UN			{ shape.number = 1; }
| DOS				{ shape.number = 2; }
;

shape:	ARBOL			{ shape.name = "tree"; shape.posy = 400; }
| NUBE				{ shape.name = "cloud"; shape.posy = 100; }
| BICI				{ shape.name = "bicycle"; shape.posy = 400; }
| GATO				{ shape.name = "cat"; shape.posy = 400; }
| PAJARO			{ shape.name = "owl"; shape.posy = 400; }
| CONEJO			{ shape.name = "rabbit"; shape.posy = 400; }
| CASA				{ shape.name = "house"; shape.posy = 400; }
| HOMBRE			{ shape.name = "man"; shape.posy = 400; }
| MUJER				{ shape.name = "woman"; shape.posy = 400; }
;

size:	CHICO			{ shape.size = 0.3; }
| MEDIANO			{ shape.size = 0.6; }
| GRANDE			{ shape.size = 1.0; }
;

pos:	IZQUIERDA		{ shape.posx = 100; }
| CENTRO			{ shape.posx = 480; }
| DERECHA			{ shape.posx = 880; }
;


%%


void my_parser (char* str) {
	yy_scan_string(str);
	yyparse();
}


int main (int argc, char **argv) {
	setup(argc, argv, my_parser);
	return 0;
}


int yyerror (char *s) {
	fprintf(stderr, "error1: %s\n", s);
}
