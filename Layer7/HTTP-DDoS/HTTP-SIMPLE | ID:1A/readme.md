
# Script for HTTP DDoS Attack ↓

## Features

- Send request with Random User-agent, Read user-agent from Local file.
- multi-threading
- Easy to Customize for beginners
- customizable Headers
- Define Number of request to be send to target
- Can modify Delay btween next request
- HTTP/HTTPS proxy can be used with modification*
- Language: Perl
## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer7/HTTP-DDoS/HTTP-SIMPLE%20%7C%20ID%3A1A/http.pl && chmod 777 *
```
## Usage

```
perl http.pl --url http://dultr.in/ --requests 100000 --threads 50
perl http.pl --url <target_url> --requests <no_of_req> --threads <no_of_threads>
```
```
- script read user agent from a file "user.txt" in same directory! (Line22) for change 
name or the directory of user-agent file!
- To modify header add, delete -> check (line 43)
- Delay between next request (line 56), bydefault 0.1s
```
```
- This script purpose to understand the HTTP ddos, to understand how traffic flows,
- Support only Attack to HTTP url,
```

## Screenshot for understanding the Script workflow !

![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1097327395826040984/Attacker_Server.png)

## Targeted Server
![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1097328145188794651/Attacker_Server_1.png)

## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
