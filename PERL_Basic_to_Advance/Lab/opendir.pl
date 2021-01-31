  use 5.010;
  $dir='D:\Tamsila\CUI\Lectures\Scripting';
       opendir(my $dh, $dir) || die "Can't open $dir: $!";
    while (readdir $dh) {
        print "$dir $_\n";
        #print tell $dh;
    }
    closedir $dh;
    print "=======================\n\tNew Way\n=============================\n";
    $d= ".";
opendir(dh, $d) || die "Can't open $d: $!";
#seekdir dh,17;
my @things = readdir dh;

foreach my $thing (@things) {
    say $thing;
    
}
 
 print "\n==============================\n";
 
 $dir = '*';
my @files = glob( $dir );
foreach (@files ) {
print $_ . "\n";
}
   