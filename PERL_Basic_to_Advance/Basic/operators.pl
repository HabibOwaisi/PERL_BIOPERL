use strict;
print "Let's learn perl operators\n========================\n";
# Arithmatic operators (+, -, *, /, %, **)
print "Type in 2 numbers and an operator and I'll print the results\n\n";
 
print "First number: ";
my $first = <STDIN>;
chomp($first);
 
print "Second number: ";
my $second = <STDIN>;
chomp($second);
 
print "The operator: ";
my $oper = <STDIN>;
chomp($oper);
my $result;
if ($oper eq "+") { $result = $first + $second; }
if ($oper eq "-") { $result = $first - $second; }
if ($oper eq "*") { $result = $first * $second; }
if ($oper eq "/") {
    if ($second == 0) {
        print "\nCannot divide by 0\n";
        $result = "ERROR";
    } else {
        $result = $first / $second;
    }
}
if ($oper eq "**") {$result = $first ** $second;}
 
print "\nResult of $first $oper $second = $result\n";
# What if the given operator is not one of the 4 ?
print "If you want to proceed the program type yes else type any key:\t";
my $y=<>;
if ($y ne "yes"){print "Thank you\n";}

