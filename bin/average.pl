#!/usr/bin/perl
use List::Util qw(sum);
@sum=0;
foreach $x (@ARGV){
  open($f,"<","$x") or die("Cant open file");
  chomp(@lines= <$f>);

  foreach $x (@lines){
    push @sum, (split(" ",$x))[1];
  }
  close($f);

}
print(sum(@sum)/@sum ."\n");
