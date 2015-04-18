%{
#include <math.h>   // to use atof() 
%}

adjective       yellow|pretty|useful|old|older|oldest
article         a|an|the
adverb          very|extremely|carefully
conjunction     and|but|or
interjection    Oh!|Aha!
noun            mouse|fire|Michael
preposition     in|about|toward
pronoun         he|this
verb            take|is|fire|go|went|gone

%%

{adjective}     {printf("Adjective ");}
{article}       {printf("Article ");}
{adverb}        {printf("Adverb ");}
{verb}          {printf("Verb ");}
{noun}          {printf("Noun ");}
{conjunction}   {printf("Conjunction");}
{interjection}  {printf("Interjection ");}
{preposition}   {printf("Preposition ");}
{pronoun}       {printf("Pronoun ");}
.               {; }

%%

int yywrap(void) {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}