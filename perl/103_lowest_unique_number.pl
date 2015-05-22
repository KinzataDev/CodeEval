#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;

	my @numbers = split(' ',$_);

	my %hash = ();

	for( my $i = 0; $i < scalar @numbers; $i++ ) {
		my $num = $numbers[$i];
		$hash{$num}{count}++;
		$hash{$num}{pos} = $i;
	}

	my $low = 10;
	my $pos = 0;

	foreach my $key ( keys %hash ) {
		next unless $hash{$key}{count} == 1;
		next unless $key < $low;
		$pos = $hash{$key}{pos}+1;
		$low = $key;
	}

	print "$pos\n";
}

__DATA__
3 3 9 1 6 5 8 1 5 3
9 2 9 9 1 8 8 8 2 1 1
