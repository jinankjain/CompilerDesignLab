#include <stdio.h>
#include <string.h>
#include <regex.h>

int main()
{
    char s[1000];
    regex integer("(\\+|-)?[0-9]+");
    while(true)
    {
        fgets(s, sizeof(s), stdin);
        if(regex_match(input,integer))
            printf("Valid Integer\n");
        else
        {
            printf("Invalid Input\n");
        }
    }
    return 0;
}