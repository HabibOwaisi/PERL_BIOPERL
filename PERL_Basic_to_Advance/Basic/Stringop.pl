
%fruits = ('Avocado', 50, 'Cherry', 120, 'Strawberry', 100, 'Pineapple', 90, 'Blueberry', 120,'Orange', 40, 'Mango', 50,'Banana', 20,'Apple', 30,'Pear', 60,'Kiwi', 120,'Peach', 70,'Plum', 100);

@fruits = keys %fruits;
print "Size of \%fruits hash is:". scalar(@fruits);
print "\n\n";

#Complete Hash
print %fruits;
print "\n\n";
#According to key value pairs
print "\$class{'Avocado'} = $fruits{'Avocado'}\n";
print "\$class{'Cherry'} = $fruits{'Cherry'}\n";
print "\$class{'Strawberry'} = $fruits{'Strawberry'}\n";
print "\$class{'Pineapple'} = $fruits{'Pineapple'}\n";
print "\$class{'Blueberry'} = $fruits{'Blueberry'}\n";
print "\$class{'Orange'} = $fruits{'Orange'}\n";
print "\$class{'Mango'} = $fruits{'Mango'}\n";
print "\$class{'Banana'} = $fruits{'Banana'}\n";
print "\$class{'Apple'} = $fruits{'Apple'}\n";
print "\$class{'Pear'} = $fruits{'Pear'}\n";
print "\$class{'Kiwi'} = $fruits{'Kiwi'}\n";
print "\$class{'Peach'} = $fruits{'Peach'}\n";
print "\$class{'Plum'} = $fruits{'Plum'}\n";

@s = sort(@fruits);
pop @s;

@slice = @s[8..11];
print "Fruits start with P are: ";
print @slice;
print"\n\n";

print "4. Now provide the given list of fruits in the following order\n";
foreach (@s) 
{ 
	print $_;
	print "\n"; 
}
print"\n\n";unshift(@s,"Pistachio");
pop @s;
push @s,"Raspberry";
print"\n\n";
print "New list in following order\n";
foreach (@s) 
{ 
	print $_;
	print "\n"; 
}
print"\n\n";