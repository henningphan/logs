#!/usr/bin/perl
use List::Util qw(sum);
@result=();
foreach $xs (@ARGV){
  open($f,"<","$xs") or die("Cant open file");
  chomp(@lines= <$f>);

  foreach $idx (1..$#lines){
    ($x, $y) = split(" ", $lines[$idx]);
    ($x1, $y1) = split(" ", $lines[$idx-1]);
    foreach $v (1..$x-$x1){
      push @result, $y1;
    }
  }
  close($f);
}
print( sum(@result)/@result ,"\n");
