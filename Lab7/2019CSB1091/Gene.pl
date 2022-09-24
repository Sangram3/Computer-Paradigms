#!/usr/local/bin/perl

print "Enter The String : \n";
$result = <STDIN>;
chomp($result);
if($result =~ /ATG([ACTG]{3,3})+((TAA)|(TAG)|(TGA))/) 
{
    print "ACCEPTED\n";
}
else
{
    print "REJECTED\n";
}
    
