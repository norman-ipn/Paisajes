
%{
#include <stdio.h>
%}

%token ONE TWO
%token TRE CLO
%token SMA MED LAR
%token LEF CEN RIG

%%

cmd: cmds	{ printf("cmd \n"); }

cmds: number shape size pos | number shape pos

number:	ONE | TWO

shape:	TRE | CLO

size:	SMA | MED | LAR

pos:	LEF | CEN | RIG

%%


int main(int argc, char **argv) {
	yy_scan_string(argv[1]);
	yyparse();
}

int yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}
