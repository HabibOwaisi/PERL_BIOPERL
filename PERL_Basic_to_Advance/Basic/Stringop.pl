


@fruits = keys %fruits;
print "Size of \%fruits hash is:". scalar(@fruits);
print "\n\n";


print %fruits;
print "\n\n";

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


foreach (@s) 
{ 
	print $_;
	print "\n"; 
}
print"\n\n";
pop @s;
push @s,"Raspberry";
print"\n\n";

foreach (@s) 
{ 
	print $_;
	print "\n"; 
}
print"\n\n";