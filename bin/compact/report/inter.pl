#!/usr/bin/perl
@old = split(" ",<>);
@inter = split(" ",<>);

sub deletable(){

}
print(join(" ",@old),"\n");
while(<>){
  @new = split(" ");
  $o1,$o2,$o3 = join(" ", @old[1..3]);
  $i1,$i2,$i3 = join(" ", @inter[1..3]);
  $n1,$n2,$n3 = join(" ", @new[1..3]);
  if( not $os eq $ns ){
    print $ns, "\n";
  }
  @old = @new;
}
