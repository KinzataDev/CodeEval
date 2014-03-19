#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @input = split '', $_;

	# Wut - swap case that's what!!!
	my @output = map { if (/[A-Z]/) {lc} elsif (/[a-z]/) {uc} else {$_} } @input;
	print @output;
	print "\n";
}

__DATA__
Hello world!
JavaScript language 1.8
A letter
