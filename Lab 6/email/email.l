%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

name [a-zA-Z0-9]{6,64}
domain [a-zA-Z0-9]{1,253}
topLevelDomain "com"|"net"|"org"
email ({name}\@{domain}\.{topLevelDomain})

%%
{email} {printf ("Valid Email"); };
.* {printf("Invalid email. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

