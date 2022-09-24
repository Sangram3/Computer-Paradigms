#!/usr/local/bin/perl
my @words;
open ( $inFile, '<', 'micro.txt') or die $!;
print "==========================================================================\n";
$cnt = 1;
while (<$inFile>) {
  chomp;
  @words = split(' ');
  foreach $word (@words)
{
	$subs = substr($word, 1, length($word)-2);
	 {if($subs =~ /[A-Z]/) {print "$cnt) $word\n";$cnt+=1;} 	}
}

}
$cnt-=1;
print "==========================================================================\n";
print "There are $cnt words with a capital letters in the middle.\n";
close($inFile);