open (d1, "<", '123.txt')or die "file is not avaiable $!";
open (d3, ">file.txt");
open (d4, ">> class.txt");
while(<d1>){
print d4 $_;
print $_;
print d3 $_;
}
print "your data is copied\n===========================\n";
print "Check the difference between Salar Variable and Array Variable 
storage from a file\n---------------------------------------\n\n";
open (d2, "<", 'C:\Users\Qadri-com\Desktop\B18.txt');
$data=<d2>;
print "$data\n\n";
open (d2, "<", 'C:\Users\Qadri-com\Desktop\B18.txt');
@data2= <d2>;
print "@data2\n\n";
close (d2);
close(d1);
close(d4);
close (d3);
print "===============================\n";
