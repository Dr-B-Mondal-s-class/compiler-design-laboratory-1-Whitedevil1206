%{
    //sample yacc file to check whether the input
    //string is palindrome or not.
    //parser part
    # include <stdio.h>
    # include <stdlib.h>
    # include <string.h>
    extern int yylex();
    void yyerror(char*);
    int flag;
%}

%union{
    const char* str;
}

%token <str> STR
%type <str> E

%%
prog:E {
    flag = 0;
    int k = strlen($1) - 1;
    int begin = 0;
    int last = k;
    while(begin < last){
      if($1[begin] == $1[last]){
         flag = 1;
         begin++;
         last--;
      }else if($1[begin] != $1[last]){
         flag = 0;
         break;
      }
    }

    if(flag == 1){
      printf("String %s is a palindrome\n",$1);
    }else {
      printf("String %s is not a palindrome\n",$1);
    }
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
