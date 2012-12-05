%{


#include <stdio.h>
#include "sketch.h"

Shape shape;


%}


%token UNO TWO
%token TRE CLO BIC
%token SMA MED LAR
%token LEF CEN RIG


%%


cmd: cmds		{ create_shape(&shape); }
;
cmds: number shape size pos
| number shape pos
;

number:	UNO		{ shape.number = 1; }
| TWO			{ shape.number = 2; }
;

shape:	TRE		{ shape.name = "tree"; shape.posy = 400; }
| CLO			{ shape.name = "cloud"; shape.posy = 100; }
| BIC			{ shape.name = "bicycle"; shape.posy = 400; }
;

size:	SMA		{ shape.size = 0.3; }
| MED			{ shape.size = 0.6; }
| LAR			{ shape.size = 1.0; }
;

pos:	LEF		{ shape.posx = 100; }
| CEN			{ shape.posx = 480; }
| RIG			{ shape.posx = 880; }
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
