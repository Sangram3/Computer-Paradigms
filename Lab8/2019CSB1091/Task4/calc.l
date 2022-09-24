%{
#include<stdio.h>
#include<string.h>
int ids,j,is_valid = 1,ops,l,v;
char identifier[100][100],operator[100][100];
%}



%%
"(" {v++;}


")" {if (v==0) { is_valid=0; return;} else v--; }

[ \t| " "|"\n"]+ /* ignore whitespace */;
    
[+|-|*|/] {ops++; strcpy( operator[l], yytext);l++; }
[a-zA-Z]+[0-9a-zA-Z]* {ids++; strcpy(identifier[j],yytext) ; j++;}
%%

int yywrap()
{
 	return 1;
}

main()
{
		int k;
		printf("Enter The Arithmetic Expression: ");
		yylex();
	
		if(is_valid==1 && v == 0  && (  ops+1== ids))
		{
  			printf("\nGiven Expression is Valid\n");
			printf("==================================================\n");
			printf("Operators :\n");
			for(k=0;k<l;k++) printf("%s \n",operator[k]);
			printf("==================================================\n");
  			printf("Operands : \n");
			for(k=0;k<j;k++) printf("%s \n",identifier[k]);
			printf("==================================================\n");
		}
		else printf("Given Expression is Invalid\n");
}
