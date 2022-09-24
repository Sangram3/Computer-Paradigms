#!/usr/local/bin/perl
print "Enter the phone number: ";
$pn = <STDIN>;
if($pn =~ /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s-]?\d{3}[\s-]?\d{4}$/) {print "TRUE\n";}
else {print "FALSE\n";}

