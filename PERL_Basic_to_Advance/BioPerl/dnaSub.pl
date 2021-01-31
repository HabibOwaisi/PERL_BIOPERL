#!/usr/bin/perl -w
# A program with a subroutine to append ACGT to DNA
# The original DNA
print "Please type the filename of the DNA or Protein sequence data: ";
$filename = <STDIN>;
chomp $filename;
unless ( open(FILE, $filename) ) {
print "Cannot open file \"$filename\"\n\n";
exit;
}
@seq = <FILE>;
close FILE;
$dnaPro = join( '', @seq);

$dnaPro =~ s/\s//g;  # Remove whitespace
# The call to the subroutine "addACGT".
# The argument being passed in is $dna; the result is savedin $longer_dna
$seq = addSeq($dnaPro);
print "I added Sequence and got \n $seq\n\n";
# Here is the definition for subroutine "addACGT"
sub addSeq {
my($sequence) = @_;
#$sequence .= 'Sequence';
return $sequence;
}
exit;