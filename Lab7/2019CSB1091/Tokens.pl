#!/usr/local/bin/perl
print "Enter the Input Text : ";
$input_text = <STDIN>;
print "Enter The Delimiter : ";
$s1 = <STDIN>;

chomp($s1);
chomp($result);
$s2 = "\n";
$input_text =~ s/\Q$s1\E/$s2/g  ;

print $input_text;

