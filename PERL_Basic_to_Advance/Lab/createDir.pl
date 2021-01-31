

$abc= 'D:\CUI\Lectures\Scripting\B17';
chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
print "Your new location is $dir\n";


$bar = "This is the corona situation, so where is Sunday";
if ($bar =~ /sunday/) {
print "First time is matching\n";
} else {
print "First time is not matching\n";
}
$bar = "foo";
if ($bar =~ /Sunday/) {
print "Second time is matching\n";
} else {
print "Second time is not matching\n";
}