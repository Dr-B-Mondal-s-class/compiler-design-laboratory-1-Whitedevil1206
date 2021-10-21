%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

PLUS [\+]
MINUS [\-]
GE ">="
LE "<="

%%
{PLUS} {printf ("Is a PLUS operator"); };
{MINUS} {printf ("Is a MINUS operator"); };
{GE} {printf ("Is a GE operator"); };
{LE} {printf ("Is a LE operator"); };
.* {printf("Invalid input. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

