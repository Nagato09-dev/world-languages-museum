%{
#include <stdio.h>
int yylex();
void yyerror(const char *s);
%}
%token HELLO
%%
start: HELLO { printf("Olá, Mundo!\n"); };
%%