#include <stdio.h>
#include <string.h>
int main()
{
    char s[1000];
    gets(s);
    int state = 0;
    for(int i=0;i<strlen(s);i++){
        if(s[i]==49 && state==0){
            state = 1;
        }
        else if(s[i]==49 && state==1){
            state = 0;
        }
    }
    if(state==0)
    {
        printf("Invalid String\n");
    }else{
        printf("Valid String\n");
    }
    return 0;
}
