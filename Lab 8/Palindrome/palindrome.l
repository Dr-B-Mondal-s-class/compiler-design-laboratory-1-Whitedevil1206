%{
    //lex file to check palindrome
    # include <stdio.h>
    # include <stdlib.h>
    # include "y.tab.h"
%}

%%

[a-zA-Z]+ {
    yylval.str = yytext;
    return STR;
}
.* {return yytext[0];}
%%

int yywrap(){
    return -1;
}
