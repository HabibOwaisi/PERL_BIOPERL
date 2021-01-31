$string = "The cat sat on the mat";
$string =~ s/cat/dog/;
print "$string\n";
# Another example
$saying = "The rain in Spain stays mainly on the plain\n";
print "$saying\n";
$saying =~ s/mainly/entirely/;
print "$saying\n";
$saying =~ s/ain/iver/; # 
print "$saying\n";
$saying =~ s/(s...s)/resids/; # code not string!
print "$saying\n"; 
#Perl with ‘e’ modifier in Regular Expression
$String = "The rain in Spain stays mainly on the plain"; 
print "Original String: $String\n"; 
  # Converting the string to UPPERCASE 
# using 'uc' Function 
$String =~ s/(\w+)/uc($1)/ge; 
print"Uppercased String: $String\n"; 
  
# Converting the string to lowercase 
# using 'lc' Function 
$String =~ s/(\w+)/lc($1)/ge; 
print"Lowercased String: $String\n"; 
=begin $1 means "whatever was matched by the first set of grouping 
#parens in the previously-run regex match." For example: /(foo)_$1_bar/
#e modifier is Evaluates the replacement as if it were a Perl statement, 
#and uses its return value as the replacement text.
if there is a need to substitute the substring with a replacement string 
which is a regular expression to be evaluated, 'e' modifier is used. 
The 'e' modifier is placed at the end of the substitution expression
=cut
