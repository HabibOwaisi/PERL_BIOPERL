my %hash = ('first' => "111",'second' => "Two",'third' => "Three", );
foreach $v (keys %hash)
{
      print "$v: $hash{$v}\n";	

	}
@arr= values %hash;
print "In single line array: @arr\n\n";
foreach $i (@arr)
{
      print "$i\n";
      }
  print "Now learn about until loop\n\n";
  $num = 10;
  until($num >20)
  {
        #print "$num\n";
        print $num++. "\n";
        }
     $n=10;
  print "Now learn do while loop\n\n";
  do {
                print $n++. "\n";
        }
   # we used $n>15 while we didn't checked the logic,      
    while($n<=15); 
    print "\n\n";  
    print "Now learn about while loop\n\n";
    
    
    print "Kindly enter any password\n";
    my $pass= <STDIN>;
    while ($pass !~ /45/)
    {
         
        print "Alaas! password not matched\n";
         chomp ($pass);  
         }
       print "Congrats! matched password\n\n";
       