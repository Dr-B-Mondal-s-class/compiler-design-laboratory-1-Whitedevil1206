%{
    //sample yacc file to check whether the input
    //string accepts 0/1 or not.
    //parser part
    # include <stdio.h>
    # include <stdlib.h>
    # include <string.h>
    extern int yylex();
    void yyerror(char*);

%}

%union{
    char* f;
}

%token <f> STR
%type <f> E

%%
S:E {

    int k = strlen($1) - 1;
    if($1[k]=='0' || $1[k]=='1')
    printf("The input string is accepted.\n");
    else
    printf("The input string is not accepted.\n");
    exit(0);
}
;
E:STR{
    $$ = $1;
}
;
%%

void yyerror(char* err){
    fprintf(stderr, "%s\n", err);
    exit(1);
}

int main(){
    yyparse();
    return 0;
}
