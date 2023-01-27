%{

#include <stdio.h>
#include <string.h>
#include "pars.tab.h"

void showError();
%}


numbers     ([0-9])+
text        ([a-zA-Z])+

%%

"rof" {return FOR;}
"elihw" {return WHILE;}
"fi" {return KEYWORDIF;}
"esle" {return KEYWORDELSE;}
"tnirp" {return PRINT;}

"=" {return Assign;}
"++" {return Increment;}
"--" {return Decrement;}

"<=" {return LessEqual;}
">=" {return GreaterEqual;}
">" {return GreaterThan;}
"<" {return LessThan;}
"!=" {return NotEqual;}
"==" {return Equal;}
"|" {return ABS;}

" dda " {return ADD;}
" bus " {return SUB;}
" lum " {return MUL;}
" vid " {return DIV;}

"\n" {return EOL;}

"(" {return OpenBr;}
")" {return CloseBR;}
";" {return SEMIC;}
"," {return COMMA;}

"ETINIFNI" {return INFINITE;}
" erauqs" {return SQUARE;}
" dom" {return MOD;}

"LAUQE" {return EQUAL;}
"LAUQEN" {return NEQUAL;}
"RETAERG" {return GREATER;}
"SSEL" {return LESS;}
"EZIS" {return SIZE;}
"NOITCNUF" {return FUNCTION;}

"REGETNI" {return INTEGER;}

"RRARAHC" {return CHARARR;}

{text}			   {sscanf(yytext, "%s", yylval.name); return (CHAR);}
{numbers}      {yylval.number = atoi(yytext); return (NUM);}

.      		     {return(OTHER);}

%%


void showError(){
    printf("Other input");
}
int yywrap(){
    return yyparse();
}
