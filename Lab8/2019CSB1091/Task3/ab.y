%{
    #include<stdio.h>
    #include<stdlib.h>
 
%}
%token A B SLASHN
%%

stmt: A A A A A A A A A A LOL B SLASHN {printf("Valid String\n"); };
LOL: LOL A |
;
%%

int main(){
	printf("Enter The String : ");
	yyparse();
   }

int yyerror(char *error)
{
	printf("Invalid String\n");
	
}