%{
    #include<stdio.h>
    int flag=0;
    int yylex();
   
%}
%token NUM

%left '+' '-'
%left '*' '/' 
%left '(' ')'
%%
ArithmeticExpression: E{
         printf("\nOutput : %d\n",$$);
         return 0;
        }
E:E'+'E {$$=$1+$3;}
 |E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 |E'/'E {$$=$1/$3;}
 |'('E')' {$$=$2;}
 | NUM {$$=$1;}
;
%%

void main()
{
   printf("\nEnter The Expression : \n");
   yyparse();
   if(flag==0)
   printf("\nGiven Expression Is Valid\n\n");
 
}

int yyerror( char *msg)
{
   printf("\nGiven Expression Is Invalid\n\n");
   flag=1;
   
}
