@class = ("Abra", "Bila", "Aree", "Zoh", "Lai", "Sandy", "Harmon", 123, 456);
#print "My array values are:  @class\n\n";
foreach $i (@class)
{
	#print "$i\n";
	}
 #print "\n\n\n".$class[0]. "\n\n\n";
 
 $marks[0]=80;
 $marks[1]=90;
 $marks[2]=66;
 $marks[3]=85;
 $marks[4]=92;
 
 print "@marks\n";
 print $marks[2],"\n\n";
 print $marks[-2], "\n\n";
  print $marks[-4], "\n\n";
  print $marks[-1], "\n\n";
 @arr=q\'abc', 'cde','efg'\;
 #print "This is q operator array: @arr\n\n";
 
 @abc= (1...15); 
 #print "@abc\n\n";
 @cde=(a...z);
 #print "@cde\n\n";
 print scalar @cde, "\n";
 
 $size = @abc;
$max_index = $#abc;
print "Size: $size\n";
print "Max Index: $max_index\n\n";


 
 
 