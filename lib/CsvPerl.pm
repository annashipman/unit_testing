package CsvPerl;

use strict;
use warnings;

use Text::CSV;

sub new {
    my $class     = shift;
    my $csv_file  = shift;

    my $self = {};
    bless $self, $class;

    $self->{'csv'} = Text::CSV->new ( { binary => 1 } );
    open $self->{'csv_handle'}, '<:encoding(utf8)', $csv_file
        or return undef;

    return $self;
}

sub sum_tracks_by_code {
    return 0;
}

1;
