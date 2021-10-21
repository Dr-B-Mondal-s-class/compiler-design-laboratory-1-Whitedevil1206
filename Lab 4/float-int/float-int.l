%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

digit [0-9]*

%%
{digit}+"."{digit}+ {printf ("Floating point number"); };
{digit} {printf ("Integer"); };
.+ {printf("Not a number. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}

yywrap (void)
{
return 0;
}
