#!/usr/local/bin/perl
$filename = $ARGV[0];
open ( $fh, "<", $filename );

open my $fh, '<', $filename;
chomp(my @array = <$fh>);

close($fh);
@rev_arr = reverse(@array); 
print "\nThe reversed array is : \n"; 
for $i (0 .. $#rev_arr) 
{ 
    print $rev_arr[$i], "\n"; 
} 