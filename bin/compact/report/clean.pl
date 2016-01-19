#!/usr/bin/perl
@old = split(" ",<>);

print(join(" ",@old),"\n");
while(<>){
  @new = split(" ");
  $os = join(" ", @old[1..3]);
  $ns = join(" ", @new[1..3]);
  if( not $os eq $ns ){
    print $ns, "\n";
  }
  @old = @new;
}
