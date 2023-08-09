%{
int digits=0;
int identifier=0;
int operators=0;
int variable =0;
%}

%%
[ ]+ {printf("White space ignored\n");}
[0-9]+ {printf ("%s is a digits\n",yytext);digits++;}
^[A-Z][A-Za-z0-9]* {printf("%s is a identifier\n", yytext);identifier++;}
[\+|\-|\*|\|^|%|<|>|!|&|=|/||~|]+ {printf("%s is an operators\n",yytext);operators++;} 
[0-9]+(.[0-9]?(E[+-]?[0-9]+)?) {printf("%s variable type\n",yytext);}
^[AEIOUaeiou][A-Za-z]?[$AEIOUaeiou] {printf ("%s is a variable\n",yytext);variable++;}
[;,(){}\[\]] {printf("%s is a special symbols\n",yytext):special Symbols
\\\\.*.[\n]? {printf ("%s is a comment \n",yytext);} 
. {printf ("unexpected\n");}
%%
int main(){
yylex();
printf ("%s is a digits\n",yytext);
printf("%s is a identifier\n", yytext);
printf("%s is an operators\n",yytext); 
printf ("%s is a variable\n",yytext);
}

