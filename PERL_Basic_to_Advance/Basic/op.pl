print "Let's learn operators\n===================\n";
#arithmatic operators
print "Enter first value\n";
$v1=<STDIN>;
chomp ($v1);
print "Enter second value\n";
$v2=<STDIN>;
chomp ($v2);
print "Enter any operator\n";
$op=<STDIN>;
chomp ($op);
$res;
if ($op eq "+") {$res = $v1 + $v2;}
if ($op eq "-") {$res = $v1 - $v2;}
if ($op eq "*") {$res = $v1 * $v2;}
if ($op eq "/") {
	 if ($v1 > $v2){$res = $v1 / $v2;}
	    else {print " Sorry! $v1 is lesser than $v2";}}
 
if ($op eq "**") {$res = $v1 ** $v2;}
print " $v1 $op $v2 = $res\n";
 print "if you want to proceed the program press any key\n\n";
 $a=<>;
 print "Enter string1\n\n";
 $str1=<>;
 chomp ($str1);
 print "Enter string2\n\n";
 $str2=<>;
 chomp ($str2);
 if ($str1 lt $str2) {print "$str1 is less than $str2\n\n";}
 
 if ($str1 lt $str2) {print "$str2 is less than $str1\n\n";}
 
 