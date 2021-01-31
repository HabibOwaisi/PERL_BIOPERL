=begin
Regular Expressions
1. Match  m//             $str =~ m/"dgj"/igm
2. Substitution s///      s/"abc"/"def"/g
3. Translation tr///          tr/"A-Z|a-z"/"*"/c

 hello, abc what are you doing in class?
 $str= "GOD hels those who help themselves!";

if ($str =~ m/God/igm)
{
	print "Yes given pattern is present\n";
	print "$&\n\n";
	}
else {print "Sorry! not foud!\n\n";}

$string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n"; #prematch
print "Matched: $&\n"; #Match
print "After: $'\n";  #Postmatch
 Substitution
if ($str =~ s/e/z/ig)
{
	print "Your given pattern has changed\n\n";
	print "$str\n\n";
	}
if ($string  =~ s/(f...)/Areeba/g)
{
	print "$string\n\n";
	}
=cut
$str= "GOD helps those who help thEmselvEs!";
$string = "The food is in the salad food bar";
$str =~ tr/E-Z|e-z/c/d;
print "$str\n";
$str1 = "the cat sat on the mat.";
$str1 =~ tr/a-z/A-Z/;
print "$str1\n";