%{
  	#include "speech_sketch.tab.h"
	#include <stdlib.h>
%}

NUMERO [0-9]

%%

{NUMERO}+ {
		uulval=atoi(yytext);
		return NUMERO;
	}
uno             { return ONE; }
dos		{ return TWO; }
arbol		{ return TRE; }
nube		{ return CLO; }
chico		{ return SMA; }
mediano		{ return MED; }
grande		{ return LAR; }
centro		{ return CEN; }
izquierda	{ return LEF; }
derecha	  	{ return RIG; }
[ ]	  	{ /* ignore whitespace */ }
.	  	{ printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }

%%
