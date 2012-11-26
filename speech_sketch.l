%{
  	#include "gramatica.tab.h"
	#include <stdlib.h>
%}

NUMERO [0-9]

%%

{NUMERO}+ {
		uulval=atoi(yytext);
		return NUMERO;
	}
uno             { return UNO; }
dos		{ return DOS; }
tres		{ return TRES; }
cuatro		{ return CUATRO; }
cinco		{ return CINCO; }
arbol		{ return ARBOL; }
nube		{ return NUBE; }
chico		{ return CHICO; }
mediano		{ return MEDIANO; }
grande		{ return GRANDE; }
centro		{ return CENTRO; }
izquierda	{ return IZQUIERDA; }
derecha	  	{ return DERECHA; }
mujer		{ return MUJER; }
nino		{ return NINO; }
nina		{ return NINA; }
[ ]	  	{ /* ignore whitespace */ }
.	  	{ printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }

%%
