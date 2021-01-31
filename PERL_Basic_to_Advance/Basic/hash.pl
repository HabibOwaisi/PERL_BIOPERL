#!/usr/bin/perl
%class = ('Aimen', 43, 'Bushra', 40, 'Fatima', 20, 'Kainaat', 35, 'Misbah', 48,'Zunaira', 45);
print "\$class{'Aimen'} = $class{'Aimen'}\n";
print "\$class{'Bushra'} = $class{'Bushra'}\n";
print "\$class{'Misbah'} = $class{'Misbah'}\n";
print "Complete Values of Hash:" .%class."\n\n";
print "$class[0]\n============\n";
print %class;
print "\n\n";
%data =('Asma'=>40, 'Sawera'=>40, 'Mishaal'=>30, 'Wajeeha'=>45);
print %data;
print "\n\n";
%abc =(-Tehzeem=>44, -Tehreem=>40, -Tahira=>38);
print %abc;
print "\n\n";
$val1= $abc{-Tehzeem}; $val2= $abc{-Tehreem}; $val3= $abc{-Tahira};
print " Tehreem: $val1\n Tehreem: $val2\n Tahira: $val3\n\n\n";
print $abc {40};# will not print the value
print "Members of a class are: \n\t @class{'Aimen', 'Bushra', 'Misbah'}\n\n";
print "\t======================\n Now we are going to get the values through keys\n\n";
@names= keys %class; @marks = values %class;
print "Check the students names and their marks\n\n";
print " Names: @names\n Marks: @marks\n\n";
print "\t======================\n";
print "$names[0]: $marks[0]\n$names[1]: \n$names[2]: \n$names[3]: \n";
print "@names\n\n";
#Check out the Existance of a Key
if (exists($abc{'Tehreem'}))
 {
	print "Tehzeem secured $abc{-'Tehreem'} marks\n\n";
  }
  elsif (exists($abc{-Tehreem}))
  {
	print "Tehreem secured $abc{-Tehreem} marks\n\n";
  }
  
 #Getting the size of a hash
=begin comment
Let's start how to work with ternary operator
=cut
$size1 = @names;
print "1 - Hash size: is $size1\n";

$size2 = @marks;
print "2 - Hash size: is $size2\n";

#Now check size again after adding the values in %class
$class{'Sumra'}= 30;
@keys = keys %class;
$size3=@keys;
print "1 - Hash size after adding: is $size3\n";
@values = values%class;
$size4 = @values;
print "2 - Hash size after adding: is $size4\n";

delete $class{'Sumra'};
@values = values %class;
$size4 = @values;
print " Hash size after deleting sumra: is $size4\n\n";
print %class; 
