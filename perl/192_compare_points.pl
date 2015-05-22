#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @numbers = split(' ', $_);

	my ( $x1,$y1,$x2,$y2 ) = @numbers;

	my $vertical = '';
	my $horizontal = '';

	if( $x2 > $x1 ) {
		$horizontal = 'E';
	}
	elsif( $x2 < $x1 ) {
		$horizontal = 'W';
	}

	if( $y2 > $y1 ) {
		$vertical = 'N';
	}
	elsif( $y2 < $y1 ) {
		$vertical = 'S';
	}

	my $direction = $vertical.$horizontal;

	if ( $direction eq '' ) {
		$direction = 'here';
	}

 	print "$direction\n";
}

__DATA__
0 0 1 5
12 13 12 13
0 1 0 5
