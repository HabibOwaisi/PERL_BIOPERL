# Let's learn use of tr operator
#tr/SEARCHLIST/REPLACEMENTLIST/cds
#y/SEARCHLIST/REPLACEMENTLIST/cds
$string = 'The cat sat on the mat';
$string =~ tr/a/o/;
print "$string\n";
 #Next Example
 $str= "this is perl scripting basic example\n";
 $str =~ tr/a-z/A-Z/;
 print "$str\n";
#An example with the use of c modifier
$myS = "Hello Everyone hope you will be fine\n\n";
$myS =~ tr/a-z|A-Z/-/c;
print "$myS\n";
#Next Example in which d modifier is used
$str1 = "the cat sat on the mat.";
$str1 =~ tr/a-z/b/d;
print "$str1\n";
#Next Example in which s modifier is used, will skip repeated words.
$hello= 'Hello Yummy Food for tummy';
$hello =~ tr/a-z/a-z/s;
print "$hello\n\n";
#use of tr/// a loop without using binding operator
my @array = qw(one two three four five six seven);
foreach (@array) {
tr/a-z/A-Z/;
}
 print "@array\n";
# use of tr operator with more than one binding operator

my $str = 'This  .  is  an 9example    7only';
$str =~ tr/A-Za-z|1-9/-/sc;
print "$str\n";
# use of variable in tr operator
my $str = 'one two three four five six seven';
my ($sl, $rl) = ('a-z', 'A-Z');
 
eval "\$str =~ tr/$sl/$rl/";
die $@ if $@;
 
print "$str\n";

