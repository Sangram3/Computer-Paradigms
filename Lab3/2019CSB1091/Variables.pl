#!/usr/local/bin/perl
$Num1 = 3;
$Num2 = $Num1++;
$Pi = 3.14;
$Famous_Name = "Karen A. Lemone";
print "The numbers are: $Num1, and $Num2, and $Pi \n";
print "$Famous_Name \n";
$name = "Raman";
print "hello $name";
print "hello $name";
$name = "ram"; # in string context
$age = 30; # in numerical context
$age = $age+1; # treated as numeric
$age1 = $age.$age; # treated as string.

# ‘.'(dot) is a concatenate operator

print "$age";
print "$age1";