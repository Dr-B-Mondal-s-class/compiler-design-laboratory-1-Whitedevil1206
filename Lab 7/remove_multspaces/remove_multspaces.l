%{
//macros
//Bibhash Kumar (2019UGCS020R)
#include<stdio.h>
%}

%%
([\n]) {fprintf(yyout,"");}
([\t]) {fprintf(yyout,"");}
([ ]+) {fprintf(yyout,"");}
. {fprintf(yyout,"%s",yytext);}
%%


int main(int argc,char*argv[])
{
    yyin=fopen("input.txt","r");
	yyout=fopen("output.txt","w");
	yylex();

	fclose(yyin);
	fclose(yyout);

	return 0;

}

yywrap(void)
{
	return 1;
}
