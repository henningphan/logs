#!/usr/bin/perl -w
use List::Util qw(sum);
while( <> ){
  @lines = split(" ");
  $time = shift( @lines );
  print "$time ", sum( @lines )/@lines, "\n";
}

