#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	print join ' ', (sort { $a <=> $b } split ' ', $_);
 	print "\n";
}

__DATA__
70.920 -38.797 14.354 99.323 90.374 7.581
-37.507 -3.263 40.079 27.999 65.213 -55.552