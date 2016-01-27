#!/usr/bin/perl
use List::Util qw(sum);
@sum=0;
$area=0;
$length=0;
foreach $x (@ARGV){
  open($f,"<","$x") or die("Cant open file");
  chomp(@lines= <$f>);

  foreach $idx (0..$#lines){
    if($idx == 0){next;}
    ($x,$y) = split(" ", $lines[$idx]);
    ($x1,$y1) = split(" ", $lines[$idx-1]);
    $diff = $x-$x1;
    $length+=$diff;

    if( $x == $x1){ next;}
    if($diff ==0){ die("same same ");}
    if($diff < 0){ die("It cant be negative\n");}

      $area+=$diff*$y1;

  }
  close($f);

}
print($area ."\n");
print($length. "\n");
