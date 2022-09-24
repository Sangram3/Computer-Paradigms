#!/usr/local/bin/perl
$filename = 'micro.txt';
open ( $fh, "<", $filename );
$cnt = 1;
print "==========================================================================\n";
while ( $line = <$fh> ) 
{ 
if($line =~ /java/ || $line=~/Java/){print "$cnt) $line";$cnt+=1 }

}
$cnt-=1;
print "==========================================================================\n";
print "\nThe count is $cnt lines\n";
close($fh);