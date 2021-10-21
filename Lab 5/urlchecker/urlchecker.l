digit [0-9]
op_plus "+"
keywords (int|main|function|public|private|static|void|long|char|define|final)
ID [a-zA-Z_][a-zA-Z0-9_]*
op ("+"|"-"|"*"|"/"|"%"|"++"|"--"|"="|"+="|"-="|"*="|"/="|">"|"<"|"=="|"&&"|"||"|"|"|"&"|"<<"|">>"|","|">="|"<=")
separator ";"




%%
((http)|(ftp))s?:"/"\/([a-zA-Z0-9]{2,256}\.)?[a-zA-Z0-9]{2,256}\.("com"|"in") {printf("\nURL Valid\n");};

.+ {printf("\nURL Invalid\n");};
%%

int yywrap() {}

main(){
  yylex();
  return 0;
}
