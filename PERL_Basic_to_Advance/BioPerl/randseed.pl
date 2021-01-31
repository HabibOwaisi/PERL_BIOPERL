
my @nucleotides = ('A', 'C', 'G', 'T');
srand(time|$$);
for (my $i=0 ; $i < 20 ; ++$i ) {
	print randomnucleotide(@nucleotides), " ";
}
print "\n";
exit;
sub randomnucleotide {
 my $nucs='';
my(@nucs) = @_;
return $nucs[rand @nucs];
}

