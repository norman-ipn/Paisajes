%{


#include "speech_sketch.tab.h"


%}


%option nounput
%option noinput


%%

/*cantidad*/
un				{ return UN; }
dos			  { return DOS; }

/*objetos*/
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
mono      { retutn MONO; }
panda     { return PANDA; }
banca     { return BANCA; }
nino      { return NINO; }


/*tamano*/
chico			{ return CHICO; }
mediano		{ return MEDIANO; }
grande		{ return GRANDE; }

/*posicion*/
centro			{ return CENTRO; }
izquierda		{ return IZQUIERDA; }
derecha	  	{ return DERECHA; }

/*otro*/
[ ]	  { /* ignore whitespace */ }
.	  { printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }


%%
