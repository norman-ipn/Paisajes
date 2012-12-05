%{
#include "speech_sketch.tab.h"
%}

%option nounput
%option noinput

%%

un			{ return ONE; }
dos			{ return TWO; }
arbol		{ return TRE; }
nube		{ return CLO; }
chico		{ return SMA; }
mediano		{ return MED; }
grande		{ return LAR; }
centro		{ return CEN; }
izquierda	{ return LEF; }
derecha	  { return RIG; }
[ ]	  { /* ignore whitespace */ }
.	  { printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }

%%
