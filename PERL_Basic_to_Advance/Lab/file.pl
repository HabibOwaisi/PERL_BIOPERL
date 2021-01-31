#FIle Handling or file I/O
=begin
open FILEHANDLE, EXPR
open FILEHANDLE

sysopen FILEHANDLE, FILENAME, MODE, PERMS
sysopen FILEHANDLE, FILENAME, MODE
=cut

open(DATA, "<file.txt") or die "Couldn't open file file.txt, $!";
@abc=<DATA>;
print "@abc\n";
close (DATA);
print "\n===========================\n";
open (r, "<", 'C:\Users\Qadri-com\Desktop\B18.txt');
while(<r>) {
print "$_";
}
close (r);
print "\n===========================\n";

open (w, "> abc.txt");
print "Congrats! your file is created\n\n";
print w "Hello B18! \nThis is learning of perl file handling";
print "\n===========================\n";
close(w);
open (fh, "<", 'C:\Users\Qadri-com\Desktop\B18.txt');
$con= <fh>;
$a=<fh>;
print "All content of the file B18.txt in scalar form is:\n\n$con\n\n$a";




