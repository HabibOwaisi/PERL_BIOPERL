#!/usr/bin/perl -w
# Calculating the reverse complement of a strand of DNA
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC'; # The DNA
print "Here is the starting DNA:\n\n$DNA\n\n";  # Print the DNA onto the screen
$revcom = reverse $DNA;
print "=========== reverse DNA==========\n\n$revcom\n\n";
# Next substitute all bases by their complements, A->T, T->A, G->C, C->G
$revcom =~ s/A/T/g;
$revcom =~ s/T/A/g;
$revcom =~ s/G/C/g;
$revcom =~ s/C/G/g;
# Print the reverse complement DNA onto the screen
print "Here is the reverse complement DNA:\n\n";
print "$revcom\n";

=begin Oh-oh, that didn't work right!
# Our reverse complement should have all the bases in it, since the
# original DNA had all the bases--but ours only has A and G!
#
# Do you see why?
#
# The problem is that the first two substitute commands above change
# all the A's to T's (so there are no A's) and then all the
# T's to A's (so all the original A's and T's are all now A's).
# Same thing happens to the G's and C's all turning into G's.
=cut

print "\nThat was a bad algorithm, and the reverse
complement was wrong!\n";
print "Try again ... \n\n";
# Make a new copy of the DNA (see why we saved the
$revcom = reverse $DNA;
# See the text for a discussion of tr///
$revcom =~ tr/ACGTacgt/TGCAtgca/;
# Print the reverse complement DNA onto the screen
print "Here is the reverse complement DNA:\n\n";
print "$revcom\n";
print "\nThis time it worked!\n\n";
exit;