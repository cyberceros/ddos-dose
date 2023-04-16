
# Script for Ping a Host on specif Port (TCP) !

## Features

- Ping TCP port
- Can be Configure with timeout & delay between reconnect
- Easy to Customize for beginners
- Display Error Code, responded by host (Con refused, timedout)
- Language: Python
## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install python3 -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/TCP-pinger/paping.py && chmod 777 *
```
## Usage

```
python3 paping.py 162.241.27.65 80
python3 paping.py <target ip> <target port>
```
```
- This script can be configured with timeout (line18) ---> sock.settimeout(0.5)
- This script can be configured with delay between next ping (line 35) ---> time.sleep(0.5)
```
## Screenshots

![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1096986710073684018/image.png)
![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1096987107928592494/image.png)

## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
