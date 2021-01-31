#My current working directory is desktop
#I download all the files from MS at Desktop
open(f1,"<file1.txt") or die " couldn't open the file , $!";
open(f2,">>file2.txt") or die " couldn't open the file , $!";
open(f5,"+>>file5.txt") or die " couldn't open the file , $!";
while(<f1>){
	print f5 $_;
	print f2 $_;
}
while(<f2>){
	print f5  $_;
}
close(f1);
close(f2);
print "======================================================\n\n";
my $file = "Seq1.txt";
open(my $fh, "<", "Seq1.txt") or die "Unable to open < Seq1.txt: $!";
my @subtituted = <$fh>;
chomp(@subtituted);
my $subtitut = join( '' ,@subtituted) ;
 $subtitut =~ s/K/T/g;
 print $subtitut;
print "\n\n======================================================\n\n";
$text = "A regular expression is a string of characters that defines the pattern or patterns you are viewing.The syntax of regular expressions in Perl is very similar to what you will find within other regular expression";
print "$text\n\n\n";
$textcopy = $text;
$textcopy =~ s/(\s.)/uc($1)/eg;
print "Global substitute and execute $textcopy\n\n\n";
print "\n\n======================================================\n\n";
$text = "A regular expression is a string of characters that defines the pattern or patterns you are viewing.The syntax of regular expressions in Perl is very similar to what you will find within other regular expression";
$result = $text;
$result =~s//a/g;
print "$result";
print "\n\n======================================================\n\n";
$String2= "1a2b3c statement-1 and statement-2 0-9a-fA-F B12abc ABC123 DEF 456";
@digit= $String2 =~ /(\d+)/g;
print "@digit\n\n";
print "\n\n======================================================\n\n";
$String2= "1a2b3c statement-1 and statement-2 0-9a-fA-F B12abc ABC123 DEF 456";
$result = $String2;
$result =~s//Adnan/g;
print "$result";
print "\n\n======================================================\n\n";


 