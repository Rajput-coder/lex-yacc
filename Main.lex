%{
#include <stdio.h>
#include "y.tab.h"

%}

DIGIT [0-9]
REAL {DIGIT}+[.]{DIGIT}*
LETTER [A-Za-z]
ASSIGN =
%%
[\t ] ;
int {printf("%s\t==> DataType\n",yytext);return (INT);}
float {printf("%s\t==> DataType\n",yytext);return (FLOAT);}
char {printf("%s\t==> DataType\n",yytext);return (CHAR);}
boolean {printf("%s\t==> DataType\n",yytext);return (BL);}
true|false { printf("%s\t==> BOOLEAN VAL\n",yytext);return BLVAL;}
['][^\t\n]['] { printf("%s\t==> CHAR VALUE\n",yytext);return CHVAL;}
[a-zA-z]+[a-zA-z0-9_]*  {printf("%s\t==> Variable\n",yytext);return ID;}
{REAL} { printf("%s\t==> Number\n",yytext);return REAL;}
{DIGIT}+ { printf("%s\t==> Number\n",yytext);return NUM;}
"," {printf("%s\t==> Special Symbol\n",yytext);return COMMA;}
";" {printf("%s\t==> Special Symbol\n",yytext);;return SC;}
{ASSIGN} {printf("%s\t==> Operator\n",yytext);return AS;}
\n return NL;
. ;

%%

int yywrap()
{
return 1;
}