%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

letters [a-zA-Z]*

%%
{letters} {printf ("Contains only English letters."); };
.* {printf("Contains other characters. Roll-2019UGCS020R");};
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

