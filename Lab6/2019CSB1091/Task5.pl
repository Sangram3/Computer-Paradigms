#!/usr/local/bin/perl
my @words;
open ( $inFile, '<', 'micro.txt') or die $!;
@list = ('a' ,'b' ,'c' ,'d' ,'e' ,'f' ,'g' ,'h' ,'i' ,'j' ,'k' ,'l' ,'m' ,'n' ,'o' ,'p' ,'q' ,'r', 's' ,'t' ,'u', 'v' ,'w' ,'x' ,'y', 'z');
print "==========================================================================\n";
$cnt = 1;
while (<$inFile>) {
  chomp;
  @words = split(' ');
  foreach $word (@words)
{
	foreach $cm (@list)
{	 if($word =~ /(^a)[$cm]{2,}/i ) {print "$cnt) $word\n";$cnt+=1;} }

}

}
print "==========================================================================\n";
$cnt-=1;
print "\nThere are $cnt words that start with a and have the same 2nd and 3rd character.\n";
close($inFile);