#!/usr/bin/perl
open(f3,"<",$ARGV[0]) or die("cant open file");
open(f8,"<",$ARGV[1]) or die("cant open file");
@l3 =<f3>;
@l8 =<f8>;
$i3=0;
$i8=0;

while(1){
  @v3 = split(" ", $l3[$i3]);
  @v8 = split(" ", $l8[$i8]);
  
  if( $v3[0] == $v8[0] ){
    print($v8[0] . " " . $v3[1] . " " . $v8[1] ."\n");
    ++$i3;
    ++$i8;
  }elsif( $v3[0] < $v8[0] ){
    print($v3[0] . " " . $v3[1] . " " . $v8[1] ."\n");
    ++$i3;
  }elsif( $v3[0] > $v8[0] ){
    print($v8[0] . " " . $v3[1] . " " . $v8[1] ."\n");
    ++$i8;
  }
  if( $i3 > scalar @l3){
    last;
  }

}
