#include <stdio.h>
#include <string.h>
int main()
{
    char s1[1000], s2[1000];
    printf("Enter the pattern which need not to be present\n");
    gets(s1);
    printf("Enter the test string\n");
    gets(s2);
    int state[strlen(s1)];
    int j=0;
    for(int i=0;i<strlen(s2);i++)
    {
        if(s2[i]==s1[j] && state[j]==0){
            if(j>0){
                state[j-1] = 0;
            }
            state[j] = 1;
            j++;
        }else if(s2[i]!=s1[j] && state[j]==1){
            state[j] = 0;
            j = 0;
        }
    }
    if(!state[strlen(s1)-1]){
        printf("Valid String\n");
    }else{
        printf("Invalid String\n");
    }
    return 0;
}


