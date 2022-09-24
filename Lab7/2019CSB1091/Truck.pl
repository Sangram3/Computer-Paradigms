
for($i = 0;$i<14;$i++)
{
    
    print "Enter The String:\n";
    $string = <STDIN>;
    chomp($string);
    
    if ($string =~ /(red ([A-Za-z0-9_-]* )?([A-Za-z0-9_-]* )?pick[ |-]?up truck )|(pick[ -]?up truck ([A-Za-z0-9_-]* )?([A-Za-z0-9_-]* )?red).*\$\.?[0-9]*/){
        print "ACCEPTED\n";
    }
    else{
        print "REJECTED\n";
    }
}