#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;
	print join ' ', map{ucfirst} split / /, $_;
	print "\n";
}

__DATA__
Hello world
javaScript language
a letter
1st thing
