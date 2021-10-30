%{
    //lex file to try bison by hello world
    # include <stdio.h>
    # include <stdlib.h>
    # include "y.tab.h"
%}

%%

("hi"|"hello"|"hy") {
    return HI;
};
("bye"|"sayonara"|"byy") {
    return BYE;
};

.* {return yytext[0];}
%%

int yywrap(){
    return -1;
}
