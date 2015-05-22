#!/usr/bin/env perl
use strict;
use warnings;

while (<DATA>) {
	chomp;

	my @letters = split('',$_);

	my %hash = ();

	foreach my $letter ( @letters ) {
		$letter = lc $letter;
		next unless $letter =~ m#[A-Za-z]#;
		if( exists $hash{$letter} ) {
			$hash{$letter}++;
		}
		else {
			$hash{$letter} = 1;
		}
	}

	my @values = sort { $b <=> $a } values %hash;

	my $beauty = 0;
	my $beauty_level = 26;
	foreach my $count ( @values ) {
		$beauty = $beauty + ( $count * $beauty_level );

		$beauty_level-- unless $beauty_level == 1;
	}

	print "$beauty\n";
}

__DATA__
ABbCcc
Good luck in the Facebook Hacker Cup this year!
Ignore punctuation, please :)
Sometimes test cases are hard to make up.
So I just go consult Professor Dalves
