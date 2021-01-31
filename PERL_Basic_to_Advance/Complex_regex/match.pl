#!/usr/bin/perl
#Let's learn match operator
$str="Hello Everyone";
foreach my $mstr($str =~ m/e/ig)
{	print "$mstr.\n";
	}
# match prematch, exact match, and postmatch
$string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n";
print "Matched: $&\n";
print "After: $'\n";

$bari = " Hello First time perl regular expression is used :) \n";
if ("2+2=4" =~ /2\+2/) {
print "First time is matching\n";
} else {
print "First time is notttt matching\n";
}
if ($bari =~ m/r..u/) 
{
    print "matched found\n";
    }
    
    else {print "matched notttttt found\n";
    }
$bar = "Sunday is a weekend";
if ($bar =~ /Sunday/) {
print "Second time is matching\n";
} else {
print "Second time is not matching\n";
}
print "===============Leus pass a signle parameter=============\n";

my @lines = ("google.com 100" , "yahoo.com 101", "gmail.com 102", "github.org 103", "au.org 104" );
$msg = "org";

sub diplayCom 
{   #$msg = shift;
    
    foreach (@lines)
    {
        if ( $_ =~ /$msg/){
          print "$_ \n";}
   }
}

diplayCom($msg);
