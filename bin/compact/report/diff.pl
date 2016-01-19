#!/usr/bin/perl
print("test\n");
while(<>){
  @input = split(" ");
  if( $input[1] > $input[2]){
    print ($input[0] ."\n");
  }
}

