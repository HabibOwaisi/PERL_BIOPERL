#!/usr/bin/perl -w
# Transcribing DNA into RNA
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC'; # The DNA
print "Here is the Your DNA:\n\n$DNA\n\n";   # Print the DNA onto the screen
$RNA = $DNA;
$RNA =~ s/T/U/g; # Transcribe the DNA to RNA by substituting all T's with U's.
print "Here is the result of transcribing the DNA to RNA:\n\n"; # Print the RNA onto the screen
print "$RNA\n\n";
exit; # Exit the program.