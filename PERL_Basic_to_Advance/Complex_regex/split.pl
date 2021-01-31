#Example of Quantifier with \B
$phrase = "Hold your horses and use perlet stuff";
$phrase =~ /.+o/; print "$&\n"; 	# will print ‘Hold your ho’
$phrase =~ /.+?o/; print "$&\n"; 	# will print ‘Ho’
print "match\n" if $phrase =~ /.+H/, ; 	# will print nothing
print "match\n" if $phrase =~ /.*H/; 	# will print ’match’
print "match\n" if $phrase =~ /^H.{14}s$/; 	# will print ’match’
print "hold is a word\n=====\n" if $phrase =~ /Hol\b/; # will print nothing
print "perl is present\n=====\n\n" if $phrase =~ /perl\B/;
#\B is the negated version of \b. \B matches at every position where \b does 
#not. 

$name= "Tamsila, Hira, Hina, Humera, Tania";
@names = split (/,/, $name);
$abc="@names";
print "\n Names in simple string:  $name\n\n";
print "Names after splittinng\n $abc\n\n";
 foreach $i (@names)
 {
	print " $i\n";
  
  }
  
  $DNA="ATGCGCTAGCTAGACTCGATCGATCT";
  @cut = split ('', $DNA);
  $cut= "@cut";
  print "\nThe given string is: \n$DNA\n\nString after split function: \n$cut\n\n";
 
  print "\nValue at index 2: \n$cut[2]\n\n";