#!/usr/bin/perl
use List::Util qw(sum);
open($f,"<",$ARGV[0]) or die("cant open file");
@lines =<$f>;
$n=@lines;
$z=1.96;
$mean = sum(@lines)/@lines;
print "mean:".$mean."\n";
print "total numbers:" .$n."\n";
$sum=0;
foreach $x (@lines){
  $sum+=($x-$mean)**2;
}

$std= sqrt($sum/$n);
$me= $z*$std/sqrt($n);
print "std:" .$std."\n";
print "error margin:" . $me,"\n";
print("up:" , $mean + $me,"\n");
print("down:" , $mean - $me,"\n");
