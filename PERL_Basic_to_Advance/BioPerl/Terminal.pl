use warnings;use BeginPerlBioinfo;

#Q1my $Features = '';
print "Enter the .gb/.gp extension file to see its Features table: ";
my $file = <STDIN>;
print "\n";
open(DATA,"< $file") or die "Couldn't open the file, $!";
my @array = ();
while(<DATA>){
push(@array,$_);
}
close(DATA);
my $str = join('',@array);
print "$str";
print "\n\n";

#Q2
print"************************You Given Data************************\n\n";
Parse1(\$Features, $file);
print "$Features";
print "*************************************************************\n\n";
sub Parse1 {
my($feat, $file) = @_;
my $in_features = 0;
my @GenBankFile = ( );
@GenBankFile = get_file_data($file);
foreach my $line (@GenBankFile){
if( $in_features) {
$$feat .= $line;
} elsif ( $line =~ /^ORIGIN/ ) {
$in_features = 1;
}
}
}
sub get_features {
	my($record) = @_;
	my($feat) = '';
	$feat = ($record =~ /^ORIGIN/);
	$feat =~ s/[\s\/\d]//g;
	return($feat)
}
#Q3
$Features =~ tr/actg/ACTG/;
print "$Features";
open(DATA1,"<", \$Features) or die "Couldn't open the file, $!";
open(DATA2,">annotatedDNA.txt") or die "Couldn't open the file, $!";
while(<DATA1>){
print DATA2 $_;}
close(DATA1);
close(DATA2);

#Q4
print "\nENTER THE FILENAME OF THE DNA SEQUENCE:= ";
$DNAfilename = <STDIN>;
chomp $DNAfilename;
unless ( open(DNAFILE, $DNAfilename) ) {
    print "Cannot open file \"$DNAfilename\"\n\n";
}
@DNA = <DNAFILE>;
close DNAFILE;
$DNA = join( '', @DNA);
$DNA =~ s/\s//g;
my $protein='';
my $codon;
for(my $i=0;$i<(length($DNA)-2);$i+=3)
{
$codon=substr($DNA,$i,3);
$protein.=&codon2aa($codon);
}

sub codon2aa{
my($codon)=@_;
$codon=uc $codon;
my(%g)=('TCA'=>'S','TCC'=>'S','TCG'=>'S','TCT'=>'S','TTC'=>'F','TTT'=>'F','TTA'=>'L','TTG'=>'L','TAC'=>'Y','TAT'=>'Y','TAA'=>'_','TAG'=>'_','TGC'=>'C','TGT'=>'C','TGA'=>'_','TGG'=>'W','CTA'=>'L','CTC'=>'L','CTG'=>'L','CTT'=>'L','CCA'=>'P','CCC'=>'P','CCG'=>'P','CCT'=>'P','CAC'=>'H','CAT'=>'H','CAA'=>'Q','CAG'=>'Q','CGA'=>'R','CGC'=>'R','CGG'=>'R','CGT'=>'R','ATA'=>'I','ATC'=>'I','ATT'=>'I','ATG'=>'M','ACA'=>'T','ACC'=>'T','ACG'=>'T','ACT'=>'T','AAC'=>'N','AAT'=>'N','AAA'=>'K','AAG'=>'K','AGC'=>'S','AGT'=>'S','AGA'=>'R','AGG'=>'R','GTA'=>'V','GTC'=>'V','GTG'=>'V','GTT'=>'V','GCA'=>'A','GCC'=>'A','GCG'=>'A','GCT'=>'A','GAC'=>'D','GAT'=>'D','GAA'=>'E','GAG'=>'E','GGA'=>'G','GGC'=>'G','GGG'=>'G','GGT'=>'G');
if(exists $g{$codon})
{
return $g{$codon};
}
else
{
print STDERR "Bad codon \"$codon\"!!\n";
exit;
}
}
print"!!!!!!!!!!!!!!!!!!!!!!!!!Translation of DNA is!!!!!!!!!!!!!!!!!!!!!!!!!\n\n";
print "$protein";
print "\n\n!!!!!!!!!!!!!!!!!!!!!!!!!###########################!!!!!!!!!!!!!!!!!!!!!!!!!\n";
exit;