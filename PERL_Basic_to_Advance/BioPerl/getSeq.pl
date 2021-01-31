$seq = addSeq('ATGCTGCTAGTCGAT');
print "I added Sequence and got \n $seq\n\n";
# Here is the definition for subroutine "addACGT"
sub addSeq {
my($sequence) = @_;
#$sequence .= 'Sequence';
return $sequence;
}
exit;