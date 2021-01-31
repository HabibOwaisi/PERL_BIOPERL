
#Q1: You have to write and run a program that fulfill the followings tasks in Work.pl file (10 marks)
sub sum
{
	  my ($a, $b)= @_;
	  return $a+$b; 
} 

sub remainder
{
	  my ($a, $b)= @_; 
	  return $a%$b;
} 

sub mul
{
	  my ($a, $b)= @_; 
	  return $a*$b;
} 

sub div
{
  my ($a, $b)= @_; 
  return $a/$b;
} 

sub expo
{
  my ($a, $b)= @_; 
  return $a**$b;
} 


print "Let’s start Basic Calculation Subroutines in Perl\n";
print "Enter your name:\n";                 
my $UName = <STDIN>;
chomp $UName;
print "Welcome **$UName** to Shell Scripting\n";

print "Enter value1:\n";
my $value1 = <STDIN>;
chomp $value1;

print "Enter value2:\n";
my $value2 = <STDIN>;
chomp $value2;

print "Kindly add your function\n";
print "press 1 = summation, 2 = Division, 3 = Multiplication, 4 = Remainder, 5= Exponent \n";
my $c = <STDIN>;
chomp $c;

if ($c == 1) {print "Sum of $value1 and $value2 is:" + sum($value1,$value2);}
if ($c == 4) {print "Remainder of $value1 and $value2 is:" + remainder($value1,$value2);}
if ($c == 3) {print "Multiplication of $value1 and $value2 is:" + mul($value1,$value2);}
if ($c == 2) 
{
	if ($value2 == 0){print " Sorry! Division by zero not possible";}
	else {print "Division of $value1 by $value2 is:" + div($value1,$value2);}
}
 
if ($c == 5) {print "Exponent of $value1 to $value2 is:" + expo($value1,$value2);}