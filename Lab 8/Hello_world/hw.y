%{
    //sample yacc file to print hello world
    //parser part
    # include <stdio.h>
    # include <stdlib.h>
    # include <string.h>
    void yyerror(char*);
    extern int yylex();
%}


%token HI BYE

%%
prog:HI {
    printf("Hello World!");
    exit(0);
}
    |BYE {
    printf("Bye World!");
    exit(0);
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
