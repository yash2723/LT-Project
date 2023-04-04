%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}
ALPHA [A-Z a-z]
DIGIT [0-9]
/* Rule Section */
%%
{ALPHA} ({ALPHA}|{DIGIT})* return ID;
{DIGIT}+ {yylval=atoi(yytext); return ID;}
[\n \t] yyterminate();
. return yytext[0];
%%