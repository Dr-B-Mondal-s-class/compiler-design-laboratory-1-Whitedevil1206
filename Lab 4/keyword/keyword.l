%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

keyword bool|float|double|if|else|while|switch|public|final|static|char|string|enum|strict|class

%%
{keyword} {printf ("Is a keyword"); };
.* {printf("Not a keyword. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}
