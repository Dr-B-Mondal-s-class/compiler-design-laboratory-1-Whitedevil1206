%{
//macros
//Bibhash Kumar (2019UGCS020R)
#include <stdio.h>
int count = 0;
%}


%%
. {count++;}
%%

int main () {


	yyin=fopen("input.txt","r");
	yylex();
	fclose(yyin);
	printf("Number of characters:%d ",count);
	return 0;
}

int yywrap (void)
{
return 1;
}
