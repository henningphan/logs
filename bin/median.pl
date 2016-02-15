#!/usr/bin/perl -w
use List::Util qw(sum);
while( <> ){
  @lines = split(" ");
  $time = shift( @lines );
  @sorted = sort {$a <=>$b} @lines;
  if( @lines%2 == 1){
    print "$time ", $sorted[@lines/2], "\n";
  }else{
    print "$time ", ($sorted[@lines/2]+$sorted[@lines/2 -1])/2, "\n";
  }
}

