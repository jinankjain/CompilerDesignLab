#include <stdio.h>

int main()
{
  int x = 1;

  char *y = (char*)&x;
  if(*y+48 == 1)
  {
  	printf("My machine is Big Endian\n");
  }
  else
  {
  	printf("My machine is Little Endian\n");
  }
}