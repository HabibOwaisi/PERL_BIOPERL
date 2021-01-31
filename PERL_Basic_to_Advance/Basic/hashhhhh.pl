#!/usr/bin/perl
%class = ('Aimen', 43, 'Bushra', 40, 'Fatima', 20, 'Kainaat', 35, 'Misbah', 48,'Zunaira', 45);
print "\$class{'Aimen'} = $class{'Aimen'}\n";
print "\$class{'Bushra'} = $class{'Bushra'}\n";
print "\$class{'Misbah'} = $class{'Misbah'}\n";
print "Complete Values of Hash:". %class."\n\n";
print "$class[0]\n============\n";
print %class;
print "\n\n";
%data =('Asma'=>40, 'Sawera'=>41, 'Mishaal'=>30, 'Wajeeha'=>45);
print %data;
print "\n\n";

delete $data{'Asma'};
$data{'Areeba'}=25;
print %data;

print "\n\n";
%abc =(-Tehzeem=>44, -Tehreem=>40, -Tahira=>38);
print %abc;
print "\n\n";
$val1= $abc{-Tehzeem}; $val2= $abc{-Tehreem}; $val3= $abc{-Tahira};
print " Tehreem: $val1\n Tehreem: $val2\n Tahira: $val3\n\n\n";
print $abc {40};# will not print the value
@slice=@data{'Asma', 'Sawera'};
print "slice hash @slice\n\n";
@keyClass = keys %class; @valClass= values %class;
print "size of hash: ". scalar @keyClass."\n\n";
$size= @keyClass;
print "Again check the size: $size\n\n";
# Check the existance of any key
if(exists ($abc{-Arreba}))
{
   print "Value exists and its value is:". $abc{-Areeba}."\n\n";	
	}
else { print "Sorry! not present\n\n";}
#adding and deleting elements

print %abc;
if(exists($abc{-Areeba}))
{ print "Value exists and its value is:". $abc{-Areeba}."\n\n";}	

else { print "Sorry! not present\n\n";}
#adding and deleting elements
