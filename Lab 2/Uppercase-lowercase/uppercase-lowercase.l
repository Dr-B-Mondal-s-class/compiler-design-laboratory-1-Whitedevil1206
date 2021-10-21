%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

uppercase [A-Z]*
lowercase [a-z]*
both [a-zA-Z]*

%%
{uppercase} {printf ("Contains only uppercase letters."); };
{lowercase} {printf ("Contains only lowercase letters."); };
{both} {printf ("Contains both lowercase and uppercase letters."); };
.* {printf("Contains other characters. Roll-2019UGCS020R");};
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

