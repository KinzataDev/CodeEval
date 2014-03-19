#!/usr/bin/env perl
use strict;
use warnings;

use DDP;

my @board;
for ( 1 .. 256 ) {
	my @inner_ar = (0) x 256;
	push @board, \@inner_ar;
}

my $sum = 0;

while (<DATA>) {
	chomp;

	my ( $arg, $index, $value ) = split ' ', $_;

	if ( $arg eq 'SetCol' ) {
		for ( 0 .. 255 ) {
			$board[$index][$_] = $value;
		}
	}
	elsif ( $arg eq 'SetRow' ) {
		for ( 0 .. 255 ) {
			$sum += $board[$_][$index] = $value;
		}
	}
	elsif ( $arg eq 'QueryCol' ) {
		$sum = 0;
		for ( 0 .. 255 ) {
			$sum += $board[$index][$_];
		}
		print $sum . "\n";
	}
	elsif ( $arg eq 'QueryRow' ) {
		$sum = 0;
		for ( 0 .. 255 ) {
			$sum += $board[$_][$index];
		}
		print $sum . "\n";
	}
}

__DATA__
SetCol 32 20
SetRow 15 7
SetRow 16 31
QueryCol 32
SetCol 2 14
QueryRow 10
SetCol 14 0
QueryRow 15
SetRow 10 1
QueryCol 2
