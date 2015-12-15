#!/usr/bin/perl -w
# input all singleGraph logs
# output time: x y z... 
# where x y z is each logs count
$time = 0;
@val = (0) x @ARGV;
@input;
@output;

# read lines and append id
foreach $in (@ARGV){
  open my $handle, '<', $in;
  my ($id) = $in =~ /(\d+)$/;
  chomp( my @lines = <$handle> );
  @lines = map { $_ . " $id" } @lines;
  close $handle;
  push(@input, @lines);
}
@input = sort { $a <=> $b } @input;
#read lines and remove id
foreach (@input){
  my ($timestamp, $count, $id) = split(" ");
  $val[ $id-1 ] = $count;
  if ( $time == $timestamp ){
    pop( @output );
  }
  $time=$timestamp;
  push( @output, "$timestamp ".join(" ",@val) );
}

foreach $line (@output){
  print $line,"\n";
}
