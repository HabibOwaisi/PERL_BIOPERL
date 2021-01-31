#!/usr/bin/perl
# Translate DNA into protein
use strict;              
use warnings;
use BeginPerlBioinfo;     # see Chapter 6 about this module
# Initialize variables
#my $dna = 'CGACGTCTTCGTACGGGACTAGCTCGTGTCGGTCGC';
print "ENTER THE DNA SEQUENCE:= \n";
my $dna = <STDIN>;
chomp $dna;
my $protein = '';
my $codon;
# Translate each three-base codon into an amino acid, and append to a protein 
for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
    $codon = substr($dna,$i,3);
    $protein .= codon2aa($codon);
}
print "I translated the given DNA\n\n$dna\n\n  into the protein\n\n$protein\n\n";

exit;