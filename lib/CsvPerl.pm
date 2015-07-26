package CsvPerl;

use strict;
use warnings;

use Text::CSV;

sub new {
    my $class     = shift;
    my $csv_file  = shift;

    my $self = {};
    bless $self, $class;

    my $fh = $self->{'csv_handle'};

    $self->{'csv'} = Text::CSV->new ( { binary => 1 } );
    open $fh, '<:encoding(utf8)', $csv_file
        or return undef;

    $self->{'csv'}->column_names ( $self->{'csv'}->getline ( $fh ) );

    while ( my $row = $self->{'csv'}->getline_hr ( $fh ) ) {
        my $track_upc = $row->{'track_upc'};
        $self->{"rows{$track_upc}"} = $row;
    }

    close $fh;
    return $self;
}

sub sum_tracks_by_code {
    my $self = shift;
    my @track_upcs = @_;
    my $track_cost = 0;

    foreach my $track ( @track_upcs ) {
        my $csv_track = $self->{"rows{$track}"};
        if ( $track eq $csv_track->{'track_upc'} ) {
            $track_cost = $track_cost + $csv_track->{'track_price'};
        }
    }

    return $track_cost;
}

1;
