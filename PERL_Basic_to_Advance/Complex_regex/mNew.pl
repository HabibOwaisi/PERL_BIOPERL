#Let's learn match operator
$str="Hello Everyone";
foreach my $mstr($str =~ m/e/ig)
{	print "$mstr.\n";
	}
# match prematch, exact match, and postmatch
$string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n";
print "Matched: $&\n";
print "After: $'\n";


