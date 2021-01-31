
# Display all the files in /tmp directory.
$dir = "*";
my @files = glob( $dir );
foreach (@files ) {
print $_ . "\n";
}
print "===============\n\n";

# Display all the txt source files in current directory.
$dir = "*.txt";
@files = glob( $dir );
foreach (@files ) {
print $_ . "\n";
};

print "===============\n\n";

# Display all the hidden files.
$dir = "/tmp/.*";
@files = glob( $dir );
foreach (@files ) {
print $_ . "\n";
}

print "===============\n\n";


# Display all the files from specified directories.
$dir = "./New/* ./Perl/*";
@files = glob( $dir );
foreach (@files ) {
print $_ . "\n";
}
print "===============\n\n";
opendir (DIR, 'E:\BSBI\6th SEM\Scripting\S2') or die "Couldn't open directory, $!";
while ($file = readdir DIR) {
print "$file\n";
}
closedir DIR;