open (fh, "<file.txt");
$nc= getc(fh);
print "$nc\n";
print getc(fh);
print getc(fh);
print getc(fh);
print getc(fh);
print "\n\n";
seek (fh,15,1);
print getc(fh);
print getc(fh);
print getc(fh);
print "\n\n";
seek (fh,-5,1);
print getc(fh);
print getc(fh);
print getc(fh);
print "\n=========================\n";
print tell (fh);
print "\n=========================\n";