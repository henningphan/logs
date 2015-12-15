#!/usr/bin/perl -w
use List::Util qw(sum);
@a = (0) x 200;

print "0 0\n";

while ( <> ){
  @in = split(" ");
  if( /time=/ ){
    $a[ $in[ 1 ] ] = 1;
    print "$in[0] ", sum( @a ), "\n";
  }elsif( /drop/ ){
    $a[ $in[ 1 ] ] = 0;
    print "$in[0] ", sum( @a ), "\n";
  }
}

print "300000 ", sum( @a ), "\n";
