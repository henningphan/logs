#!/usr/bin/perl
$sum=0;
foreach $x (@ARGV){
  open($f,"<","$x") or die("Cant open file");
  chomp(@lines= <$f>);
  (undef, $value) = split(" ", $lines[-1]);
  $sum+=$value;
  close($f);

}
print($sum."\n");
