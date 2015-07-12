# Unit test setups

Reference project to remind me how to set up and run unit tests in a variety of
languages. Easy stuff that is easy to forget when I haven't been working in that
language recently.

PRs and comments on better syntax/language features to use very welcome.

## Description of code and tests

For each language, the simple test tests a function or method that adds one to
the number passed in.

The CSV test tests the code's ability to read in a music catalogue, accept a
comma separated list of track codes and return the total price.

## Perl

### Requirements

Perl
cpanminus (for installing the other CPAN modules)
Text::CSV

### To run the simple test

perl -I/$PWD/lib tests/simple_perl_test.pl
