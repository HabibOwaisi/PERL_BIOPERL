#!/usr/bin/perl -w
# Reading protein sequence data from a file, take 2
# The filename of the file containing the protein sequencedata
$proteinfilename = 'scna1.ali';
# First we have to "open" the file, and associate
# a "filehandle" with it. We choose the filehandle
# PROTEINFILE for readability.
open(PROTEINFILE, $proteinfilename);
# Now we do the actual reading of the protein sequence datafrom the file,
# by using the angle brackets < and > to get the input fromthe
# filehandle. We store the data into our variable $protein.
# Since the file has three lines, and since the read onlyis
# returning one line, we'll read a line and print it, three times.
$protein = <PROTEINFILE>; # First line
print "\nHere is the first line of the protein file:\n\n"; # Print the protein onto the screen
print $protein; # Second line
$protein = <PROTEINFILE>;
# Print the protein onto the screen
print "\nHere is the second line of the protein file:\n\n";
print $protein;
# Third line
$protein = <PROTEINFILE>;
# Print the protein onto the screen
print "\nHere is the third line of the protein file:\n\n";
print $protein;
# Now that we've got our data, we can close the file.
close PROTEINFILE;