#!/usr/bin/env plackup

use strict;
use Plack::App::CGIBin;
use Plack::App::Directory;
use Plack::Builder;

my $app = builder {

    # embedded PSGI app
    mount '/foo' => sub {
        my $env = shift;
        [ 200, [ 'Content-Type' => 'text/plain' ], [ 'bar' ] ];
    };
    
    # unmodified legacy CGI scripts
    mount '/cgi-bin' => Plack::App::CGIBin->new(root => './cgi-bin');
    
    # static files
    mount '/' => Plack::App::Directory->new(root => './htdocs');

};
