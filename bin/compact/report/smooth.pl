#!/usr/bin/perl
use List::Util qw(sum);
while(<>){
  @input = split(" ");
  push @smooth, @input[-1];
#  print @smooth,"\n";
  if( scalar @smooth > 1000 ){
    shift @smooth;
  }
  print(@input[0]," ", sum(@smooth)/(scalar @smooth),"\n");
}

