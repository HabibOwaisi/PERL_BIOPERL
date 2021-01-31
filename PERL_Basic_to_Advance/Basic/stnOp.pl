print "Enter string1\n\n";
 $str1=<>;
 chomp ($str1);
 print "Enter string2\n\n";
 $str2=<>;
 chomp ($str2);
 print "\n\n";
 if ($str1 lt $str2) {print "$str1 is less than $str2\n\n";}
 
 $size1=length($str1);  $size2=length ($str2);
 if ($size1 < $size2) {print "$str1 is less than $str2\n\n";
 print "Your string1 size is:\t $size1\nYour string2 size is:\t $size2\n\n\n";}
print "Enter Your name\n";
$name=<>;

chomp($name);
if ($name eq "Zoha"){
       
           print "Enter Your password\n";
          $pass=<>;
          chomp($pass);
          if ($pass eq "zohaabc123")
          {print "Welcome Zoha\n\n";}
          else  {print "Sorry! password is wrong: $pass\n\n";}
          }
  else {print "Sorry! user name is wrong: \t $name";}
