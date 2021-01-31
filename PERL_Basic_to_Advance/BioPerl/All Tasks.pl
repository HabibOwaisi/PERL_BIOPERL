
#use strict;
#use warnings;
use BeginPerlBioinfo;
print "Enter your Fasta file name: ";
$file = <STDIN>;
chomp $file;
print "\n******************************************\n";
open(DATA,"< $file") or die "Sorry this is not FASTA file\n, $!";
my @array = ();
while(<DATA>){
push(@array,$_);
}
close(DATA);
$str = join('',@array);
if ($str =~ /^>/){
print "Your Entered File is fasta format\n";
}
else{
print "Sorry this is not FASTA file\n";
}
print "\n******************************************\n";
$type = join('',@array);
$type =~ s/\s//g;
chomp $type;
if ($type =~ /M/ig){
print "Protein type sequeance\n";
}
elsif($type =~/t/ig){
print "DNA type sequance\n\n";
}
elsif($type =~/u/ig)
{
print "RNA type Sequance\n\n";
}
else{
print "Neither Protein nor RNA ,DNA\n";
}
print "\n******************************************\n";
my $Features = '';
print "Enter the .gb/.gp extension file to see its Features table: ";
my $filename = <STDIN>;
print "\n";
Parse1(\$Features, $filename);
print "FEATURES\t Location/Qualifiers\n";
print "$Features";
print "\n******************************************\n";
exit;
sub Parse1 {
my($feat, $filename) = @_;
my $in_features = 0;
my @GenBankFile = ( );
@GenBankFile = get_file_data($filename);
foreach my $line (@GenBankFile){
if( $line =~ /^ORIGIN/ ) {
last;
} elsif( $in_features) {
$$feat .= $line;
} elsif ( $line =~ /^FEATURES/ ) {
$in_features = 1;
}
}
}
sub get_features {
my($record) = @_;
my($feat) = '';
$feat = ($record =~ /^FAEATURES/);
$feat =~ s/[\s\/\d]//g;
return($feat)}
# Translate DNA into protein
print "ENTER THE DNA SEQUENCE File: ";
my $dna = <STDIN>;
chomp $dna;
open(FILE, "<$dna") or die "Couldnot open file, $!";
my @DNA = <FILE>;
close FILE;
my $DNA = join( '', @DNA);
$DNA =~ s/\s//g;
$DNA =~ tr/ACGTacgt/TGCAtgca/;
print "\nDNA Replication:\n\n$DNA\n";
print "\n******************************************\n";
my $RNA = $DNA;
$RNA =~ tr/Tt/Uu/;
print "DNA Transcription:\n\n$RNA\n\n";
print "\n******************************************\n";
my @file_data = ( );
my $dna1 = '';
my $protein = '';
@file_data = get_file_data($dna);
$dna1 = extract_sequence_from_fasta_data(@file_data);
$protein = translate_frame($dna1, 1);
print "DNA Translation: \n\n";
print_sequence($protein, 53);
print "\n******************************************\n";
my $G=0;
my $C=0;
my $T=0;
my $A=0;
my @bases=split(//,$DNA);
foreach my $bp(@bases)
{
if($bp =~ m/G/i){$G++};
if($bp =~ m/C/i){$C++};
if($bp =~ m/T/i){$T++};
if($bp =~ m/A/i){$A++};
}
print "\nNumber of G bases: $G";
print "\nNumber of C bases: $C";
print "\nNumber of T/U bases: $T";
print "\nNumber of A bases: $A\n";
my $j=length($DNA);
print"Total number of nucleotides: $j\n";
print "\n******************************************\n";
my $l=length($protein);
print"Total number of Amino Acids are: $l\n";
print "\n******************************************\n";
exit;