#!/usr/bin/perl -w
# A subroutine to randomly select a nucleotide
# WARNING: make sure you call srand to seed the
# random number generator before you call this function.

# Test the randomnucleotide subroutine
my @nucleotides = ('A', 'C', 'G', 'T');
srand(time|$$);
for (my $i=0 ; $i < 20 ; ++$i ) {
	print randomnucleotide(@nucleotides), " ";
}
print "\n";
exit;
sub randomnucleotide {
my(@nucs) = @_;
return $nucs[rand @nucs];
}