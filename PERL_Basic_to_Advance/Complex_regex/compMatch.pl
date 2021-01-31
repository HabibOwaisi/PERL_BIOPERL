#Let's learn match operator in complex Regex
$line="Hello\@welcome";
  if ($line =~ /(\S+)@(\S+)/) {         # \S = any non-space character
      my($user, $machine) = ($1, $2);
      print "User is: $1\n\nMachine is: $2\n\n";
  }
  print "$line\n\n";
  # A "while" loop with regular expressions
print "Please enter password: ";
    $password = <>;
if ($password !~ /42/) 
{  # While the entered line doesn’t contain 42
	#print "Access denied.\n";
	
	chomp($password);
	print "Correct password! Welcome.\n\n";
}
else {print "Alass! not matched\n\n";}

#substitution complex operator
$saying = "The rain in Spain stays mainly on the plain\n";
$saying =~ s/(s...s)/uc($1)/e; # code not string!
print "$saying\n";
$saying =~ s/(\w+)/uc/ge; 
print"Uppercased String: $saying\n"; 
  
# Converting the string to lowercase 
# using 'lc' Function 
$saying =~ s/(\w+)/lc($1)/ge; 
print"Lowercased String: $saying\n"; 
=begin $1 means "whatever was matched by the first set of grouping 
#parens in the previously-run regex match." For example: /(foo)_$1_bar/
#e modifier is Evaluates the replacement as if it were a Perl statement, 
#and uses its return value as the replacement text.
if there is a need to substitute the substring with a replacement string 
which is a regular expression to be evaluated, 'e' modifier is used. 
The 'e' modifier is placed at the end of the substitution expression
=cut
print "\n Press any key for proceeding\n\n"; <>;
$text = "a little piece of bread and butter\n";
print "Base text $text\n";
 
$textcopy = $text;
$textcopy =~ s/(\s.)/uc($1)/;
print "Single default substitute $textcopy\n";
 
$textcopy = $text;
$textcopy =~ s/(\s.)/uc($1)/e;
print "Substitute and execute $textcopy\n";
 
$textcopy = $text;
$textcopy =~ s/(\s.)/uc($1)/g;
print "Global Substitute $textcopy\n";
 
$textcopy = $text;
$textcopy =~ s/(\s.)/uc($1)/eg;
print "Global substitute and execute $textcopy\n";
