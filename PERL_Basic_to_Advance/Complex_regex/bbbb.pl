$fruit = "fifteen (15) bananas";
print "$fruit\n";
print "ok\n" if $fruit =~ m{(abc)?};	# will print ‘ok’
print "okK\n" if $fruit =~ m{(abc)+};	# will not print anything, and fail 
print "okKK\n" if $fruit =~ /fte*en/;	# will print ‘ok’
$fruit =~ /\w+/; print "$&\n"; 	# will print ‘fifteen’
$fruit =~ /\b\d+\b/; print "$&\n"; 	# will print ‘15’
$fruit =~ /\(.*\)/; print "$&\n"; 	# will print ‘(15)’
print "not found\n" if $fruit =~ /^banana/;	# will print ‘not found’