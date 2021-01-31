

print "----------------Let's learn how to create a directory in Perl---------------------\n";
$dir = 'perl';
# This creates perl directory in \fasta directory.
mkdir($dir)or die "Couldn't create $dir directory, $!";
print "Directory created successfully\n";

print "------------------------------------------------------------\n";
$dir = 'D:\Tamsila\CUI\Lectures\perl';
# This creates perl directory in \fasta directory.
mkdir($dir, 0755) or die "Couldn't create $dir directory, $!";
print "Directory created successfully\n";
print "------------------------------------------------------------\n";
# This removes perl directory from \fasta directory.
#rmdir ( "perl" ) or die "Couldn't remove $dir directory, $!";
#print "Directory removed successfully\n";


print "------------------------change location------------------------\n\n";
$dir = "abc";
$a="123";
# This changes perl directory and moves you inside /home directory.
chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
print "Your new location is $dir\n";
mkdir (Hello);
mkdir 'D:\Tamsila\CUI\Lectures\Scripting\perl';



