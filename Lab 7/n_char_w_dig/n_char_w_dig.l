%{
//macros
//Bibhash Kumar (2019UGCS020R)
#include<stdio.h>
int count_char = 0;
int count_whitespace = 0;
int tabs = 0;
int count_digits = 0;
int n_lines = 0;
%}


%%
\t tabs++;
{digits} count_digits++;
[ ] count_whitespace++;
\n n_lines++;
. {count_char++ ;};
%%

int main () {
yyin = fopen("input.txt","r");
yylex ();
printf("Total characters detected %d\n",count_char+count_whitespace+tabs+count_digits+n_lines);
printf("%d Digits detected\n",count_digits);
printf("%d Whitespaces detected\n",count_whitespace);
printf("%d Characters detected\n",count_char);
printf("%d tabs detected\n",tabs);
printf("%d lines detected",n_lines);
fclose(yyin);

return 0;
}

int yywrap (void)
{
return 1;
}

