use strict;
use warnings;
use Test::More;
use CsvPerl;

my $csv_perl = CsvPerl->new( 'samples/music_catalogue.csv' );
isa_ok( $csv_perl, 'CsvPerl' );

my $result = $csv_perl->sum_tracks_by_code( "" );
is ( $result, 0, "Empty string has no value" );

$result = $csv_perl->sum_tracks_by_code( "234569" );
is ( $result, 99, "Price of one track is returned" );

$result = $csv_perl->sum_tracks_by_code( "172835", "234572" );
is ( $result, 190, "Price of multiple tracks is summed" );

done_testing();
