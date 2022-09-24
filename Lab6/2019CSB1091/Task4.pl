#!/usr/local/bin/perl
$filename = 'micro.txt';
open ( $fh, "<", $filename );
print "==========================================================================\n";
$cnt = 1;
while ( $line = <$fh> ) 
{ 
if($line =~ /"\w*\s?\w+"/){($ss) = $line =~ m/"\w*\s?\w+"/g;$ans = substr($ss, 1, length($word)-1);print "$cnt) $ans\n";$cnt+=1 }

}
print "==========================================================================\n";
$cnt-=1;
print "\nThe count is $cnt\n";
close($fh);

