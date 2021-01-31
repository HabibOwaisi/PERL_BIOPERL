
$string = "Cats go Catatonic\nWhen given Catnip";
($start) = ($string =~ /\A(.*?) /);
@lines = $string =~ /^(.*?) /gm;
print "First word: $start\n","Line starts: @lines\n";
print "================================\n\n";
$string = "Cats go catatonic\nWhen given catnip";
($start) = ($string =~ /\A(.*?) /);
@lines = $string =~ /^(.*?) /gm;
@end = $string =~ / (.*?)$/gm;
print "First word: $start\n","Line starts: @lines\n","Line Ends: @end\n\n";

$x= "Houscats catenates house and cat";
print $x =~ /\bcat/. "	$&\n"; # Matches 'the cat sat' but not 'cat on the mat'
print $x =~/cat\b/ . "	$&\n"; ; # Matches 'verification' but not 'the cat on the mat'
print $x =~/\bcat\b/ . "	$&\n"; 

$name='*****Marty';
if  ( $name =~ m/\w+/ ) { 
	print "match at: $& \n";
	print "Before: $` \t after: $'\n";
}  else { print "Not match\n"; }


 my $myString = "\nhELlo eveRyoNe fyguhj ohgfgk\n";
# the \w is match any alphanumeric
# the + is match one or more than one
 my $myCount = $myString =~ s/(\w+)/\u\L$1/ig; # used to properly capetalize the each word of string.
 print "$myString \n"; 
 print "$myCount \n";
                                
                                
                                              
 
