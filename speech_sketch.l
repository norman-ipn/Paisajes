%{

#include "speech_sketch.tab.h"

%}

%%

un			  { return ONE; }
dos			  { return TWO; }
arbol		  { return TRE; }
nube		  { return CLO; }
chico		  { return SMA; }
mediano		{ return MED; }
grande		{ return LAR; }
centro		{ return CEN; }
izquierda	{ return LEF; }
derecha		{ return RIG; }
[ ]			  { /* ignore whitespace */ }
.			    { printf("unknown character!!\n"); }

%%
