package SimplePerl;

sub new {
  my $class = shift;

  my $self = {};
  bless $self, $class;

  return $self;
}

sub add_one {

  my $self  = shift;
  my $input = shift;

  my $output = $input + 1;

  return $output;
}

1;
