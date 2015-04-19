%{
#include <math.h>   // to use atof() 
%}

letter      [a-zA-Z]
digit       [0-9]
newline     (\n)
ws          [ \t]+
string      \"[^"\n]*\"
exponent    ((E|e)("+"|"-")?({digit}+))
float1      {digit}+"."{digit}+{exponent}?
float2      {digit}+{exponent}
doubleNum   ({float1}|{float2})
integer     {digit}+
identifier  ({letter}|"_")({letter}|{digit}|"_")*   

%%
"//"((.)*)\n                            printf("LineComment\n");
"/*"(([^*]|(("*"+)[^*/]))*)("*"+)"/"\n  printf("MultilineComment\n");

bool        { printf("%s ", yytext); } 
break       { printf("%s ", yytext); }
printf      { printf("%s ", yytext); }
class       { printf("%s ", yytext); } 
double      { printf("%s ", yytext); }
else        { printf("%s ", yytext); } 
float       { printf("%s ", yytext); } 
for         { printf("%s ", yytext); } 
if          { printf("%s ", yytext); }
register    { printf("%s ", yytext); } 
int         { printf("%s ", yytext); } 
do          { printf("%s ", yytext); } 
else        { printf("%s ", yytext); } 
struct      { printf("%s ", yytext); } 
union       { printf("%s ", yytext); }
return      { printf("%s ", yytext); }
string      { printf("%s ", yytext); }
void        { printf("%s ", yytext); } 
while       { printf("%s ", yytext); }
sizeof      { printf("%s ", yytext); }
static      { printf("%s ", yytext); }
unsigned    { printf("%s ", yytext); }
static      { printf("%s ", yytext); }
switch      { printf("%s ", yytext); }
goto        { printf("%s ", yytext); }
enum        { printf("%s ", yytext); }
short       { printf("%s ", yytext); }
main        { printf("%s ", yytext); }

true|false  { printf("boolconstant ");} 

"+"         { printf("plus "); }
"-"         { printf("minus "); }
"*"         { printf("multiplication "); }
"/"         { printf("division "); }
"<="        { printf("lessequal "); }
"<"         { printf("less "); }
">"         { printf("greater "); }
">="        { printf("greaterequal "); }
"=="        { printf("equal "); }
"!="        { printf("notequal "); }
"="         { printf("assignop "); }
";"         { printf("semicolon "); }
","         { printf("comma "); }
"."         { printf("period "); }
"("         { printf("leftparen "); }
")"         { printf("rightparen "); }
"["         { printf("leftbracket "); }
"]"         { printf("rightbracket "); }
"{"         { printf("leftbrace "); }
"}"         { printf("rightbrace "); }

{newline}       { printf("\n"); }
{integer}       { printf("integer "); }
{doubleNum}     { printf("double "); }
{string}        { printf("string "); }
{identifier}    { printf("id "); }
{ws}            {; }
.               {; }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}