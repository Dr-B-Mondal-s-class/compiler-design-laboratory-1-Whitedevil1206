%{
//macros
//Bibhash Kumar (2019UGCS020R)
int count = 0;
%}


%%
\n {return 0; };
. {count++;}
%%

int main () {
yylex ();
printf("%d characters detected\n",count);
}

int yywrap (void)
{
return 0;
}


