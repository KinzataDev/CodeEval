#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @words = split(' ', $_);
	foreach my $word ( @words ) {
		$word =~ s#(\d)(\D+)(\d)#$3$2$1#;
		print $word . ' ';
	}
 	print "\n";
}

__DATA__
4Always0 5look8 4on9 7the2 4bright8 9side7 3of8 5life5
5Nobody5 7expects3 5the4 6Spanish4 9inquisition0
