#!/usr/bin/perl -w
# Reading protein sequence data from a file
# The filename of the file containing the protein sequencedata
$proteinfilename = 'sequence.fasta';
# First we have to "open" the file, and associate
# a "filehandle" with it. We choose the filehandle
# PROTEINFILE for readability.
open(PROTEINFILE, $proteinfilename);
@protein=<PROTEINFILE>;
# Now we do the actual reading of the protein sequence data from the file,
# by using the angle brackets < and > to get the input from the
# filehandle. We store the data into our variable $protein.
#$protein = <PROTEINFILE>;
# Now that we've got our data, we can close the file.
close PROTEINFILE;
# Print the protein onto the screen
print "Here is the protein:\n\n";
print "@protein\n";
print "Data at index 2: \n", $protein[2],"\n";
exit;

