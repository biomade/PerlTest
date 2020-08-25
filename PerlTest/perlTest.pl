#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use autodie ;
use feature qw/say/;

my $string = $ARGV[0];
chomp $string;
$string = "Hello From Perl " . $ARGV[0];

say $string;

my $filename = "C:\\Users\\lauri\\Repos\\PerlTest\\PerlTest\\writeToFile.txt";
#write to a file
open(FH, '>', $filename) ;
print FH $string;
close (FH);

select STDOUT;