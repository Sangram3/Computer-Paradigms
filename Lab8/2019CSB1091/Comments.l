%{
int single_line;
int multi_line;
%}
%%
"//".*\n  {single_line++;}					
\/\*[^*]*[*]+([^/][^*]*[*]+)*\/ {multi_line++;}	

%%

int yywrap()
{
return 1;
}

int main(int k,char **argcv)
{
yyin=fopen(argcv[1],"r");
if (argcv[2) {yyout=fopen(argcv[2],"w");}
else {yyout = fopen("out.c","w");}
yylex();
printf("Total Comments      : %d\n",single_line+multi_line);
printf("Multiline Comments  : %d\n",multi_line);
printf("Single line Comments: %d\n",single_line);
return 0;
}
