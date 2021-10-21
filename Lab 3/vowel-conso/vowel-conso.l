%{
//macros
//Bibhash Kumar (2019UGCS020R)
%}

vowels [aeiouAEIOU]*
consonants [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]*

%%
{vowels} {printf ("Contains only vowel(s)."); };
{consonants} {printf ("Contains only consonant(s)."); };
[a-zA-Z]* {printf ("Contains both vowel(s) and consonant(s)"); };
.* {printf("Contains other characters. Roll-2019UGCS020R"); };
%%

main () {
yylex ();
}
yywrap (void)
{
return 0;
}

