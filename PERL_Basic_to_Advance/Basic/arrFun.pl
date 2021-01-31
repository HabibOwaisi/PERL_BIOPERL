=begin
Adding and Removing Elements in Array
push @ARRAY, LIST: Pushes the values of the list onto the end of the array.
pop @ARRAY: Pops off and returns the last value of the array.
shift @ARRAY: Shifts the first value of the array off and returns it, shortening the array by 1 and moving
everything down.
unshift @ARRAY, LIST: Prepends list to the front of the array, and returns the number of elements in the new
array.
=cut
#!/usr/bin/perl
# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins = @coins\n";
# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins = @coins\n";
# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins = @coins\n";
# remove one element from the last of the array.
pop(@coins);
print "4. \@coins = @coins\n";
# remove one element from the beginning of the array.
$start=shift(@coins);
print "5. \@coins = @coins\n";
print " The start value of arrau is:  $start\n\n";