#!/usr/bin/perl
use List::Util qw(sum);
@sum=0;
$area=0;
foreach $x (@ARGV){
  open($f,"<","$x") or die("Cant open file");
  chomp(@lines= <$f>);

  foreach $idx (0..$#lines){
    if($idx == 0){next;}
    ($x,$y) = split(" ", $lines[$idx]);
    ($x1,$y1) = split(" ", $lines[$idx-1]);
    $diff = $x-$x1;

    if( $x == $x1){ next;}
    if($diff < 0){ die("It cant be negative\n");}

    if( $y < $y1){
      $area+=$diff*$y+(($y1-$y)*$diff/2)

    }else{
      $area+=$diff*$y1+(($y-$y1)*$diff/2)

    }
  }
  close($f);

}
print($area ."\n");
