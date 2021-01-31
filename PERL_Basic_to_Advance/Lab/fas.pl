print "Kindly upload your file\n\n";
$file=<STDIN>;
open ($fh, "<$file")or die "Couldn't open file $!";
@data= <$fh>;
print "\n\n@data\n\n";
$data= join ('', @data);
print "Sclarly data:\n\n $data\n\n";
print "\n\nEnter a motif to search\n\n";
$motif=<STDIN>;
chomp ($motif);

if($data =~ /$motif/)
{
        print "Congrats! motif is matched:\t$motif\n\n"	
	}
else {print "Alaas! No motif is matched\n\n"}
close($fh);
=begin
$cons1= "MRWRERFLYSMEGVNKASASAGEIK";
$cons2= "MRWRERFLYSMEGVTKASASAGETK";
if ($motif eq $cons1)
{
         print "Congrats! Your provided motif is a Consensus sequences 1: 
         \t$motif\n\n"	
	}
elsif ($motif eq $cons2)
{
         print "Congrats! Your provided motif is a Consensus sequences 2: 
         \t$motif\n\n"	
	}
else {print "Alaas! Neither Cons1 nor Cons2 is matched\n\n"}
=cut