%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

country "+91"
digit [0-9]{10}

%%
{country}{digit} {printf ("Valid Mobile No."); };
.* {printf("Inavalid mobile no. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}
