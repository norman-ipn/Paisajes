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
un              { return UN; }
una             { return UNA;}
dos		{ return DOS; }
tres		{ return TRES; }
cuatro		{ return CUATRO; }
cinco		{ return CINCO; }
pequeno		{ return PEQUENO; }
normal		{ return NORMAL; }
grande		{ return GRANDE; }
centro		{ return CENTRO; }
izquierda	{ return IZQUIERDA; }
derecha	  	{ return DERECHA; }
arbol		{ return ARBOL; }
casa            { return CASA; }
pasto           { return PASTO; }
hombre          { return HOMBRE; }
mujer		{ return MUJER; }
nino		{ return NINO; }
nina		{ return NINA; }
rojo            { return ROJO; }
azul            { return AZUL; }
cafe            { return CAFE; }
rosa            { return ROSA; }
negro           { return NEGRO; }
verde           { return VERDE; }
amarillo        { return AMARILLO; }
naranja         { return NARANJA; }
[ ]	  	{ /* ignore whitespace */ }
.	  	{ printf(" Caracter desconocido %c (%d)!\n", *yytext, *yytext ); }

%%
