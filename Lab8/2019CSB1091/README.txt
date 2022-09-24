How to run the program:
-> for task 1 and 2
lex task.l
gcc lex.yy.c
a.exe // input.file output.file // in case input and output files needed

-> for task 3,4 and 5
lex task.l
yacc -d -y  task.y
gcc lex.yy.c y.tab.c
a.exe input.file output.file // in case input and output files needed



1) count.l:
assumption: \t contains 1 space
            \n \t and space are all considered as single characters
	    isolated { colon,semicolons etc} considered as single word

2) Comments.l
   This programme gives single line and multiline comments count.
   output is input without both type of comments
   input file name should be given as first cmd argument or you can paste the input text into cmd
   output file name sould be given as second cmd argument else by default ouput.c will be generated as an output

3) ab.y 
   ab.y and ab.l both file are available inside the folder named Task3
   Input should be feeded on the cmd it will check given string is valid or invalid and output will be shown accordigly in 
   the cmd

4) calc.l
   calc.l will be found inside the folder named Task4
   assumption: numbers are not allowed as they are constants and not identifiers
               valid identifiers e.g a1,aa,ab1b2
               only rounded brackets are supported i.e "(" ")"
   	       only +|-|*|/ these  4 opertions are supported

5) calc.y
   Both calc.y and calc.l will be found inside the folder named Task5
   Output of the expression will be shown for valid expressions
   only rounded brackets are supported i.e. "(" ")"
   only +|-|*|/ these  4 opertions are supported
   no output for divide by zero case i.e e.g 1/0
                