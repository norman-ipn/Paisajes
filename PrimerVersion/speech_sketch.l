%{


#include "speech_sketch.tab.h"


%}


%option nounput
%option noinput


%%


un				{ return UN; }
dos			  { return DOS; }
arbol			{ return ARBOL; }
nube			{ return NUBE; }
bici			{ return BICI; }
gato      { return GATO; }
conejo    { return CONEJO; }
pajaro    { return PAJARO; }
casa      { return CASA; }
hombre    { return HOMBRE; }
mujer     { return MUJER; }
auto      { return AUTO; }
mono      { return MONO; }
panda     { return PANDA; }
banca     { return BANCA; }
nino      { return NINO; }
chico			{ return CHICO; }
mediano		{ return MEDIANO; }
grande		{ return GRANDE; }
centro			{ return CENTRO; }
izquierda		{ return IZQUIERDA; }
derecha	  	{ return DERECHA; }
[ ]	  { /* ignore whitespace */ }
.	  { printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }


%%
