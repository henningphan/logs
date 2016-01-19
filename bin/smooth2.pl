#!/usr/bin/perl
use List::Util qw(sum);
@time;
@group1;
@group2;
@group3;
while( <> ){
  chomp;
  my @split = split(" ");
  push @time  , $split[0];
  push @group1, $split[1];
  push @group2, $split[2];
  push @group3, $split[3];

}
$start=0;
$end=0;
while( true ){
  if( $start >= scalar @time ){
    print("break 1 \n");
    last;
  }
#  print($time[$start], " " ,$time[$end] , "\n");
  while( $time[$start]+30000 >= $time[$end] ){
    if( $end >= scalar @time ){
      last;
    }
    ++$end;
  }
  print($time[$start],
   " ", sum(@group1[$start..$end])/($end-$start),
   " ", sum(@group2[$start..$end])/($end-$start),
   " ", sum(@group3[$start..$end])/($end-$start),
   "\n");
  ++$start;


}
