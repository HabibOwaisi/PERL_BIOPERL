print "----------------Let's learn how to create a directory in Perl---------------------\n";
mkdir ("perl");
print "directory successfuly created\n";
chdir ('D:\Tamsila\CUI\Lectures\perl\B18');
print "Directory changed\n";
mkdir ("abc");
$p='D:\Tamsila\CUI\Lectures\perl\perl';
mkdir ($p);
chdir ($p);
#mkdir ("123");
open (c, ">abc.txt");
print c "You are learning how to create directory in perl\n";
#rmdir ("123");
rename ("perl", "abc");
