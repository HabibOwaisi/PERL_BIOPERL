for $line ('words', 'word') { 
   if ($line =~ /\bword\b/ ) {
      print "singular\n\n";
   } elsif ($line =~/\bwords\b/ ) { 
      print "Plural\n\n"; 
}
}

$line = 'foreach $i (@n) { $sum+=$i;}'; 
if ($line =~ /^for|^while/ ) {
   print "\nRegular loop\n";
} 
elsif ( $line =~ /^do/ ) {
   print "do while loop\n";
};
print "\n\n";
print "If you want to proceed, press any key\n";
$a=<>;
# Let's check /S non space character class and /s space character class example
$string= "A regular expression is a string of characters that defines the pattern or patterns you are viewing.
The syntax of regular expressions in Perl is very similar to what you will find within other regular expression.\n";
 print " $string\n";

 $string =~ /(\S+)\s+(\S+)/;
         print "  $&\n\n ";
 
     $string =~ /\S+\s+\S+/."\n\n";
 # Let's Check Bioinfo example
 $dna='     ATCGCGTATGCTTGATCGTAGTCGCTAGA    ';
 $coun= length($dna);
 print "$dna\n";
print "If you want to proceed, press any key\n";
$a=<>;
 
 $dna=~ /^(\s*)/;  # also be replaced by /^ +/
 my $scount = length( $1 );
 $dna=~ /(\s*)$/;  # also be replaced by / +$/
 my $ecount = length( $1 );
print "Start spaces: $scount\nEnd Spaces: $ecount\n\n";
  #now remove that spaces
  $dna=~ s/^(\s*)//;  # Remove leading spaces
  $dna=~ s/(\s*)$//;  # Remove trailing spaces
  print "$dna\n\n";
  $count= length($dna);
print "Start dna: $coun\nEnd dna: $count\n\n";



