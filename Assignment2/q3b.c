#include <stdio.h>
#include <string.h>
int main()
{
    char s[1000];
    gets(s);
    bool state = false;
    for(int i=0;i<strlen(s);i++){
        if(s[i]=='1'){
            state = true;
        }else{
            state = false;
        }
    }
    if(state==0)
    {
        printf("Invalid String\n");
    }else
    {
        printf("Valid String\n");
    }
    return 0;
}

