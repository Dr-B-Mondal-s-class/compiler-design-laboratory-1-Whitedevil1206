%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

identifier [a-zA-Z_][a-zA-Z_0-9]*

%%
{identifier} {printf ("Valid identifier"); };
.+ {printf("Not a valid identifier. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

