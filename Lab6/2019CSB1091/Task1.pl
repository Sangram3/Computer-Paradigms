#!/usr/local/bin/perl
$filename = 'micro.txt';
open ( $fh, "<", $filename );
print "==========================================================================\n";
$cnt = 1;
while ( $line = <$fh> ) 
{ 
if($line =~ /[Vv]/){print "$cnt) $line";$cnt+=1 }

}
print "==========================================================================\n";
$cnt-=1;
print "\nThe count is ",$cnt;
close($fh);