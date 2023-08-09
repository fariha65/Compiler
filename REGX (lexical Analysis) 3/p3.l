%{

%}
%%
23\.(34[3-9])|23\.(3[5-9][0-9])|[2-9][3-9]\.[0-9][0-9][0-9] {printf ("%s is a double numbers from 23.343-99.999 . \n",yytext);}
^([aeiouAEIOU][a-z]*[aeiou])$ {printf("%s -Found an alphabet string that START & last with a capital letter vowel. \n" ,yytext );}
(12[8-9]|1[3-8][0-9]|19[0-1])(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])){3} {printf("%s -class B ip address . \n",yytext);}
^([0-9][a-zA-Z]+)|[a-zA-Z]+([0-9])$ {printf("%s -found an alphanumaric string . \n",yytext);}
^([A-Z][a-z]+)([ ][A-Z][a-z]+)*  {printf ("%s -found a person name. \n",yytext);}
^(CSE)[ ](06[1-9]|07[0-2])[ ]([0-9]+){5} {printf("%s -found a id number BATCH (61-72). \n",yytext);}
%%
int main(){
FILE *file;
file = fopen("code.c", "r") ;
if (!file) {
printf("couldnot open file");
exit (1);
}
else {
yyin = file;
}
yylex();

}
