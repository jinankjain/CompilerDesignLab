%{
#include <math.h>   // to use atof() 
%}

letter      [a-zA-Z]
digit       [0-9]
identifier  ({letter}|"_")({letter}|{digit}|"_")*
keyword     int|if|else|then 
ws          [ \t]+   
integer     {digit}+      

%%


{identifier}+{ws}*"="   { printf("Identifier AssignmentOperator "); }
{keyword}               { printf("Keyword "); }
"+"                     { printf("plus "); }
"-"                     { printf("minus "); }
"*"                     { printf("multiplication "); }
"/"                     { printf("division "); }
"<="                    { printf("lessequal "); }
"<"                     { printf("less "); }
">"                     { printf("greater "); }
">="                    { printf("greaterequal "); }
"=="                    { printf("equal "); }
"!="                    { printf("notequal "); }
";"                     { printf("semicolon "); }
","                     { printf("comma "); }
"."                     { printf("period "); }
"("                     { printf("leftparen "); }
")"                     { printf("rightparen "); }
"["                     { printf("leftbracket "); }
"]"                     { printf("rightbracket "); }
"{"                     { printf("leftbrace "); }
"}"                     { printf("rightbrace "); }
{integer}               { printf("Integer "); }
{ws}                    {;}
.                       {;}


%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}