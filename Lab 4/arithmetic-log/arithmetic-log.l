%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

ari_op ("+"|"-"|"/"|"%"|"*"|"++"|"--")
log_op ("=="|"!="|"&&"|"!"|"||"|"<="|">=")

%%
{ari_op} {printf ("Arithmetic operator"); };
{log_op} {printf ("Logical operator"); };
.+ {printf("Neither arithmetic nor logical operator. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

