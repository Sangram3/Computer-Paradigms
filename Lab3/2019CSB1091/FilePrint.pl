#!/usr/local/bin/perl
$filename = $ARGV[0];
open ( $fh, "<", $filename );
while ( $line = <$fh> ) 
{ 

print "$line"; 
}
close($fh);