%{
#include <stdio.h>
%}

%token ONE TWO
%token TRE CLO
%token SMA MED LAR
%token LEF CEN RIG

%%

cmd: cmds 	{ printf("\n cmd \n"); }
; 
cmds: number shape size pos 
   | number shape pos   { printf("\n regla reconocida...\n");}
;

number:	ONE 
| TWO
;

shape:	TRE 
| CLO
;

size:	SMA
| MED 
| LAR
;

pos:	LEF 
| CEN 
| RIG
;
%%

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
