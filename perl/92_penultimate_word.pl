#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @input = split ' ', $_;
 	print $input[-2] . "\n";
}

__DATA__
some line with text
another line
