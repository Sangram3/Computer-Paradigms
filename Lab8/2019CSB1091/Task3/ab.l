%{
#include "y.tab.h"
%}

%%
[aA] {return A;}
[bB] {return B;}
\n {return SLASHN;}
. {return yytext[0];}
%%

int yywrap()
{
return 1;
}
