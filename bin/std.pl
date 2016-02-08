#!/usr/bin/perl
use List::Util qw(sum);
open($f,"<",$ARGV[0]) or die("cant open file");
@lines =<$f>;
$n=@lines;
$z=1.96;
$mean = sum(@lines)/@lines;
print "total numbers:" .$n."\n";
print "mean:".$mean."\n";
$sum=0;
foreach $x (@lines){
  $sum+=($x-$mean)**2;
}

$std= sqrt($sum/$n);
$me= $z*$std/sqrt($n);
print "error margin:" . $me,"\n";
print "std:" .$std."\n";
print("up:" , $mean + $me,"\n");
print("down:" , $mean - $me,"\n");
