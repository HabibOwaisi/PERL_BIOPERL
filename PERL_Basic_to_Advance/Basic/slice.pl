
my @abc = (a...z);
print "Before spicing:  @abc\n\n";
@std= @abc [0...4];
@areeb= @abc[0,17, 4,4,1,0];
#print "@std\n\n";
print "Name of students:    @areeb\n\n";
$zoha= join ('', @areeb);
print "Convertion to String:  $zoha\n\n";
#print "Now Let's learn splice function\n\n";

splice (@abc,8, 5, A, B, C, D, E );
print "After spicing:  @abc\n\n";

#print "Let's learn how to transfer a String to an Array\n\n";
$str= "Hello-students-how-are-you-?";
@arr= split ('-', $str);
print "The String is :  $str \n\nConverted Array is:  @arr\n\n";
#print $arr[0]."\n";
#print $arr[2]."\n";
#print $arr[4]."\n";
$str1= join ('*', @arr);
print "The Array is:  @arr \n\nJoined to string is:  $str1\n\n";
