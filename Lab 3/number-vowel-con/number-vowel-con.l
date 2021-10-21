%{
//macros
//Bibhash Kumar (2019UGCS020R)
int count_vowels = 0;
int count_consonants = 0;
int other = 0;
%}

vowels [aeiouAEIOU]
consonants [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]

%%
{vowels} {count_vowels++ ;};
{consonants} {count_consonants++ ;};
\n {return 0;};
. {other++ ;};
%%

int main () {
yylex ();
printf("%d vowels detected\n",count_vowels);
printf("%d consonants detected\n",count_consonants);
printf("%d other characters detected\n",other);
}

int yywrap (void)
{
return 0;
}

