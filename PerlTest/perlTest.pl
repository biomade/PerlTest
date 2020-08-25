#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use autodie ;
use feature qw/say/;

my $string = "Hello From Perl"; # $ARGV[0];
my $string = $ARGV[0];
chomp $string;
say $string;
 select STDOUT;
 
 
# my @a = qw{1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19};
#my @b = qw{a b c d e f g h i j  k  l  m  n  o  p  q  r  s };
#print 'start' . "\n";

#while ( my ( $item1, $item2) = ( splice (@a, 0, 1), splice (@b, 0, 1) ) ) {
    #print 'Item 1: ' . $item1 . "\n";
    #print 'Item 2: ' . $item2 . "\n";
    #warn 'Finish one item' . "\n";
    #say 'Item 1: ' . $item1 . "\n";
    #say 'Item 2: ' . $item2 . "\n";
    #say 'Finish one item' . "\n";
    #sleep(1);
#}

