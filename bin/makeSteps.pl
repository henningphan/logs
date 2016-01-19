#!/usr/bin/perl
@olist = split(" ", <>);
print join(" ",@list);
while(<>){
  @nlist =split(" ");
  $olist[0] = $nlist[0];
  print( join(" ", @olist),"\n" );
  print( join(" ", @nlist),"\n" );
  @olist = @nlist;

}
