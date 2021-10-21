%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

digit [0-9]

%%
{digit} {printf ("A valid digit"); };
.* {printf("Not a valid digit. Roll-2019UGCS020R");};
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

