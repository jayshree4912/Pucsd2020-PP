#include<stdio.h>
#include "add.h"
#include "sub.h"
#include "mul.h"
#include "div.h"
int main()
{	
	double a,b;
	char operator;
	printf("Enter an operator (+, -, *,/): ");
    	scanf("%c", &operator);
	printf("Enter the values of a & b: ");	
	scanf("%lf%lf",&a,&b);
	
	switch(operator)
    	{
	case '+':	add(a,b);
			break;
	case '-':	sub(a,b);
			break;
	case '*':	mul(a,b);
			break;
	case '/':	div(a,b);
			break;
	
	default :
        	printf("Error! operator is not correct\n");
        	
	}
return 0;
}  
