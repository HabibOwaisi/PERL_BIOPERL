#!/usr/bin/perl

print "Kindly enter your favorite five items which you like to form a big Burger\n";


{
    print "Enter item other than bread in a sequence: ";                        
    chomp $num;
    push @arr, $num;                                                            

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
unshift @arr,"Bread";
print "======================================\n";
print @arr;
print "\n\n===================================\n";