=begin
Perl programming language provides the following types of loop to handle the looping
requirements.
1. while loop
Repeats a statement or group of statements while a given condition is true. It tests the
condition before executing the loop body.2. until loop
Repeats a statement or group of statements until a given condition becomes true. It tests
the condition before executing the loop body.
3. for loop
Executes a sequence of statements multiple times and abbreviates the code that
manages the loop variable.
4. foreach loop
The foreach loop iterates over a normal list value and sets the variable VAR to be each
element of the list in turn.
5. do...while loop
Like a while statement, except that it tests the condition at the end of the loop body
6. nested loops
You can use one or more loop inside any another while, for or do..while loop.
=cut
print "\tLet's learn a basic example of for loop, to which you are familiar\n\n";
print "Please Enter your name\n\n";
my $name = <STDIN>;
chomp ($name);
print "Wellcome!*$name*to Perl Scripting\n\n";
print "Enter the number for repeaition\n";
$v1= <STDIN>;
 my $i=0;
for ($i=0; $i<$v1; $i++)
{
   print "*$name*\n";
 
 }
 print "=========================================\n\n"; 
 print "Press any key to run remaining part of code\n\n";
$a=<>;
 print "\tLet's learn a basic example of foreach loop, \n\n";
 my %hash = ('first' => "111",'second' => "Two",'third' => "Three",
  );

  chomp(%hash);
  @keys= keys %hash;
  foreach my $k (keys %hash) {
    print "$k: $hash{$k}\n\n";
  }

  print "\n";
print "=========================================\n\n"; 
print "Press any key to run remaining part of code\n\n";
$a=<>;
print "\tLet's learn a basic example of while loop\n\n";
print "Please enter a password\n\n";$password = <>;
while ($password !~ /42/) 
{  # While the entered line doesn't contain 42
	print "Access denied.\n";
	
	chomp($password);
}
print "Correct password! Welcome.\n\n";
print "=========================================\n\n"; 
print "Press any key to run remaining part of code\n\n";
$a=<>;
print "\tLet's learn a basic example of until loop\n\n";
print "\nCheck the working of until loop\n\n";
$num = 10;
until( $num >15 ){
   printf "$num\n";
   $num++;
}
print "Correct password! Welcome.\n\n";