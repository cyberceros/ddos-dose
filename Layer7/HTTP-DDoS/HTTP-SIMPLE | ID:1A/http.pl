#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Headers;
use Time::HiRes qw(sleep);
use threads;
use Thread::Queue;
use Getopt::Long;

# Parse command line options
my $url;
my $num_requests = 1000;
my $num_threads = 10;
GetOptions('url=s' => \$url, 'requests=i' => \$num_requests, 'threads=i' => \$num_threads) or die "Usage: $0 --url <url> --requests <num_requests> --threads <num_threads>";

my $ua = LWP::UserAgent->new();

# Read user agents from text file
my @user_agents = ();
open my $fh, '<', './user.txt' or die "Failed to open file: $!";
while (my $user_agent = <$fh>) {
    chomp $user_agent;
    push @user_agents, $user_agent;
}
close $fh;

my $q = Thread::Queue->new(); # Thread-safe queue to hold requests

# Enqueue requests in the queue
for (my $i = 0; $i < $num_requests; $i++) {
    $q->enqueue($i);
}

# Define a worker thread function
sub worker {
    while (my $item = $q->dequeue()) {
        # Select random user agent from list
        my $random_user_agent = $user_agents[rand @user_agents];

        # Define custom headers
        my $headers = HTTP::Headers->new(
            'User-Agent' => $random_user_agent,
            'Accept-Encoding' => 'gzip, deflate',
            'Accept-Language' => 'en-US,en;q=0.5',
            'Connection' => 'keep-alive',
            'Referer' => 'google'
        );

        # Send the HTTP request with custom headers
        my $request = HTTP::Request->new('GET', $url, $headers);
        my $response = $ua->request($request);

        # Delay for 0.1 second before sending the next request
        sleep 0.1;
    }
}

# Start worker threads
my @threads;
for (my $i = 0; $i < $num_threads; $i++) {
    push @threads, threads->create(\&worker);
}

# Wait for worker threads to finish
foreach my $thread (@threads) {
    $thread->join();
}
