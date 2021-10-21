%{
//macros
//Bibhash Kumar (2019UGCS020R)
int count_char = 0;
int count_whitespace = 0;
int tabs = 0;
int count_digits = 0;
%}

digits [0-9]

%%
\t tabs++;
{digits} count_digits++;
[ ] count_whitespace++;
\n {return 0;};
. {count_char++ ;};
%%

int main () {
yylex ();
printf("Total characters detected %d\n",count_char+count_whitespace+tabs+count_digits);
printf("%d Digits detected\n",count_digits);
printf("%d Whitespaces detected\n",count_whitespace);
printf("%d Characters detected\n",count_char);
printf("%d tabs detected\n",tabs);
}

int yywrap (void)
{
return 0;
}

