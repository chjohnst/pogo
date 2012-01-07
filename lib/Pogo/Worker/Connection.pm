###########################################
package Pogo::Worker::Connection;
###########################################
use strict;
use warnings;
use Log::Log4perl qw(:easy);
use AnyEvent;
use AnyEvent::Strict;
use base "Object::Event";

our $VERSION = "0.01";

###########################################
sub new {
###########################################
    my($class, %options) = @_;

    my $self = {
        %options,
    };

    bless $self, $class;
}

###########################################
sub connect {
###########################################
    my( $self ) = @_;

    DEBUG "Worker: Connecting";
}

1;

__END__

=head1 NAME

Pogo::Worker::Connection - Pogo worker connection abstraction

=head1 SYNOPSIS

    use Pogo::Worker::Connection;

    my $con = Pogo::Worker::Connection->new();

    $con->enable_ssl();

    $con->reg_cb(
      on_connect => sub {},
      on_request => sub {},
    );

    $con->connect( "localhost", 9997 );

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item C<new()>

Constructor.

    my $worker = Pogo::Worker::Connection->new();

=back

=head1 LICENSE

Copyright (c) 2010-2012 Yahoo! Inc. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
imitations under the License.

=head1 AUTHORS

Mike Schilli <m@perlmeister.com>
Ian Bettinger <ibettinger@yahoo.com>

Many thanks to the following folks for implementing the
original version of Pogo: 

Andrew Sloane <andy@a1k0n.net>, 
Michael Fischer <michael+pogo@dynamine.net>,
Nicholas Harteau <nrh@hep.cat>,
Nick Purvis <nep@noisetu.be>,
Robert Phan <robert.phan@gmail.com>,
Srini Singanallur <ssingan@yahoo.com>,
Yogesh Natarajan <yogesh_ny@yahoo.co.in>

