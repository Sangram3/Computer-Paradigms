@words = ('computer', 'radio', 'calculator', 'teacher', 'bureau', 'police', 'geometry', 'president', 'subject', 'country', 'enviroment', 'classroom', 'animals', 'province', 'month', 'politics', 'puzzle', 'instrument', 'kitchen', 'language', 'vampire', 'ghost', 'solution', 'service', 'software', 'virus25', 'security', 'phonenumber', 'expert', 'website', 'agreement', 'support', 'compatibility', 'advanced', 'search', 'triathlon', 'immediately', 'encyclopedia', 'endurance', 'distance', 'nature', 'history', 'organization', 'international', 'championship', 'government', 'popularity', 'thousand', 'feature', 'wetsuit', 'fitness', 'legendary', 'variation', 'equal', 'approximately', 'segment', 'priority', 'physics', 'branche', 'science', 'mathematics', 'lightning', 'dispersion', 'accelerator', 'detector', 'terminology', 'design', 'operation', 'foundation', 'application', 'prediction', 'reference', 'measurement', 'concept', 'perspective', 'overview', 'position', 'airplane', 'symmetry', 'dimension', 'toxic', 'algebra', 'illustration', 'classic', 'verification', 'citation', 'unusual', 'resource', 'analysis', 'license', 'comedy', 'screenplay', 'production', 'release', 'emphasis', 'director', 'trademark', 'vehicle', 'aircraft','experiment');
$index = int(rand(100));
$word = @words[$index];

print "Welcome to the Hangman Game !!!\n";
print "Here is your word : ";
$siz = length($word);
for($i = 0;$i<$siz;$i++){ 
    print "_ ";
    push @yours,"_";
}

print "\n" ;
$turns = 6;
@wguess = ();
$is_won = 0;
@stages = ( "
                   --------
                   |      |
                   |      O
                   |     \\|/
                   |      |
                   |     / \\
                   -
                ",
          
                "
                   --------
                   |      |
                   |      O
                   |     \\|/
                   |      |
                   |     / 
                   -
                ",
          
                "
                   --------
                   |      |
                   |      O
                   |     \\|/
                   |      |
                   |      
                   -
                ",
            
                "
                   --------
                   |      |
                   |      O
                   |     \\|
                   |      |
                   |     
                   -
                ",
        
                "
                   --------
                   |      |
                   |      O
                   |      |
                   |      |
                   |     
                   -
                ",
     
                "
                   --------
                   |      |
                   |      O
                   |    
                   |      
                   |     
                   -
                ",

                "
                   --------
                   |      |
                   |      
                   |    
                   |      
                   |     
                   -
                ");
while($turns>0 && $is_won == 0)
{
    print"\n";
    print @stages[$turns];
    print "\n";
    print "Turns : ",$turns,"\n" ;
    print "Word  : ",@yours,"\n";
    print "Misses: ";
    
    if($#wguess + 1== 0)
    {
	    print "No misses yet !!!\n";
    }
    else{
        for($i = 0;$i<$#wguess+1;$i++)
        {
            print @wguess[$i]," ";
        }
        print"\n";
    }
    print "Guess the letter !!! ";
    $ch = <STDIN>;
    $OK = 0;
    $dashp = 0;
    for($i = 0;$i<$siz;$i++)
    {
        $temp = substr( $word, $i , 1 );
	    chomp($ch)	;

        if( $temp eq $ch)
        {
            $OK = 1;
            @yours[$i] = $ch;
        }
        if(@yours[$i] eq "_") {$dashp = 1;}

    }
    
    if($OK == 1)
    {
        if($dashp == 0)
        {
            print "Congratulations, You have guessed the word correctly !!!\n";
            print "The word is ";
            print $word, "\n";
            $is_won = 1;
       
        }
        else{
		print "Correct guess !!!\n ";

        }
    }
    else{
        print "Sorry :( you have made wrong guess !!!\n";
        push @wguess,$ch;
        $turns--;
        
    }
    
}
if($is_won == 0)
{
    print @stages[0]."\n";
    print "Sorry you lost the game !!!\n";
    print "The correct word is ",$word,"\n";
}

print "\n===================================================THANKS===================================================\n";




