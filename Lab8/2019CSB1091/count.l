%{
int lines,words,chars,spaces,tword;
%}

%%
[" "|\t] {spaces++;}
\n {	chars++;lines++; 	}
[^ \n\t]+ {words++, chars=chars+yyleng;}
. {chars++;}
%%
int yywrap(void)  
{
 return 1;
}
int main(int argc, char*argv[]) 
{
	yyin=fopen(argv[1],"r");
 yylex();
 printf("Lines = %d, Chars= %d, Words= %d, Spaces= %d ",lines,chars,words,spaces);
 return 0;
}