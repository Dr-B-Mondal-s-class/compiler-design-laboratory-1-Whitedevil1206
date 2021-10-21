%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

letter [A-Za-z]+
digit [0-9]+

%%
{digit} {printf ("contains only digit(s)"); };
{letter} {printf ("contains only letter(s)"); };
.* {printf("contains both letter(s) and digit(s) or special character(s)");};
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}
