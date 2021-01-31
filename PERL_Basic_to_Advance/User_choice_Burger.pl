#!/usr/bin/perl

print "Kindly enter your favorite five items which you like to form a big Burger\n";

for(1...5)                                                                     
{
    print "Enter item other than bread in a sequence: ";                            my $num = <STDIN>;                                                                                                          
    chomp $num;
    push @arr, $num;                                                            }

print "\n\nBurger is ready with following items\n";
print "=====================================\n";
print "Bread";
print @arr;                                                                     
print "Bread\n";
print "=====================================\n";
print "The middle item of your burger is:" .$arr[2]."\n";
push @arr,"Cheese";                                                             
unshift @arr,"Cheese";
print "Size of the Burger: " .scalar(@arr)."\n";
push @arr,"Bread";                                                             
unshift @arr,"Bread";print "Burger is ready with additional following items: \n";
print "======================================\n";
print @arr;
print "\n\n===================================\n";print "Size of the Burger: " .scalar(@arr)."\n";