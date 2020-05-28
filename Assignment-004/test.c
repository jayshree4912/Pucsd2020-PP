#include <stdio.h>
#include "logger.h"
int main()
{
  
  int x = 1,i=0;
  char *s = "Pucsd 2019-2020::";

  while(i<5)
  {
   LOG_PRINT("Hello World ");
   LOG_PRINT("Welcome to Programming Paradigms=> %s %d",s,x++);
   i++;
  }
}

