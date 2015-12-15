#!/usr/bin/perl -w
use List::Util qw( min max );
while( <> ){
  @lines = split(" ");
  my $time = shift @lines;
  my $min = min(@lines);
  my $max = max(@lines);
  print "$time $min $max\n";

}
