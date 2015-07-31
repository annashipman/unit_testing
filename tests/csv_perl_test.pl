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

my $expected_row = {
    id          => 7,
    distributor => "Minister Of Pound",
    artist      => "Bubbles",
    album_upc   => 534198,
    album_title => "Chiller",
    album_price => 999,
    track_upc   => 172836,
    track_title => "Shriller",
    track_price => 93
};
$result = $csv_perl->get_details_by_code( "172836" );
is_deeply ( $result, $expected_row, "You can compare contents of hashes" );

done_testing();
