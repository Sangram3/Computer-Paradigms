#!/usr/local/bin/perl
print "Enter The Year :\n";
$yr=<STDIN>;
if ($yr%400 == 0)
{
	print "This is a Leap Year !\n" ;
}
elsif ($yr%100 == 0)
{
	print "This is not a Leap Year !\n";
}
elsif($yr%4 == 0)
{
	print "This is a Leap Year !\n";
}
else
{
	print "This is not a Leap Year !\n";
}