use strict;
use warnings;
use Test::More;
use SimplePerl;

my $simple_perl = SimplePerl->new;
isa_ok( $simple_perl, 'SimplePerl' );

my $correct_calculation = $simple_perl->add_one( 2 );
is ( $correct_calculation, 3, "2 plus 1 is 3" );

my $wrong_calculation = $simple_perl->add_one( 1 );
isnt ( $wrong_calculation, 3, "1 plus 1 isn't 3" );

done_testing();
