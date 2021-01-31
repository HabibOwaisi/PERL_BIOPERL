$phrase = "Hold your horses and use perlet stuff";
$phrase =~ /.+o/; print "$&\n"; 	# will print ‘Hold your ho’
$phrase =~ /.+?o/; print "$&\n"; 	# will print ‘Ho’
print "match\n" if $phrase =~ /.+H/, ; 	# will print nothing
print "match\n" if $phrase =~ /.*H/; 	# will print ’match’
print "match\n" if $phrase =~ /^H.{14}s$/; 	# will print ’match’
print "hold is a word\n=====\n" if $phrase =~ /Hold\B/; # will print nothing
print "hold is a word\n=====\n" if $phrase =~ /perl\b/;
#\B is the negated version of \b. \B matches at every position where \b does 
#not. 

$fruit = "fifteen (15) bananas";
$fruit =~ /e+/; print "\n======\n\n$&\n"; 	# will print ‘ee’
print "$fruit\n";
$fruit =~ /an*/; print "$&\n"; 	# will print ‘an’
$fruit =~ /(an)+/; print "$&\n"; 	# will print ‘anan’
$fruit =~ /e*/; print "$&\n"; 	# will not print, however it will succeed
print "$fruit\n";
print "ok\n" if $fruit =~ m{(abc)?};	# will print ‘ok’
print "ok\n" if $fruit =~ m{(abc)+};	# will not print anything, and fail 
print "ok\n" if $fruit =~ /fte*n/;	# will print ‘ok’
$fruit =~ /\w+/; print "$&\n"; 	# will print ‘fifteen’
$fruit =~ /\b\d+\b/; print "$&\n"; 	# will print ‘15’
$fruit =~ /\(.*\)/; print "$&\n"; 	# will print ‘(15)’
print "not found\n" if $fruit !~ /^banana/;	# will print ‘not found’

$name='*****Marty';
if  ( $name =~ m/\W+/ ) { 
	print "\nmatch at: $& \n";
	print "B4=$` \t after=$'\n";
}  else { print "Not match\n"; }


