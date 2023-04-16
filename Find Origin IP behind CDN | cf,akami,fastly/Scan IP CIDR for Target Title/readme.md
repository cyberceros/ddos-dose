
# Script for Scanning a Word on IP "CIDR" http/https response) !

## Features

- Scan for the Target Word on http or https responce return by server, if match show's on terminal
- multi-threading
- Easy to Customize for beginners
- Return only "Found" results with http either https
- Language: Python
## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install python3 -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Find%20Origin%20IP%20behind%20CDN%20%7C%20cf%2Cakami%2Cfastly/Scan%20IP%20CIDR%20for%20Target%20Title/ip-scan.py && chmod 777 *
```


## How to Set the Word Script going to Search --->
```
  target_title = 'nginx'  (Line 11) replace nginx with your targeted word/title
```

## Usage

```
python3 ip-scan.py 3.7.64.0/18
python3 ip-scan.py <target CIDR>
```
```
- Script Using 80 port for HTTP or 443 for HTTPS (for change line 21,34)
- Bydefault script using 200 max_workers (recommended) (for change line 42)
```
```
- For running on IDE (PyCharm) (line 14) change ip_range value to CIDR value
- ip_range = sys.argv[1]   ---> ip_range = 3.7.64.0/18  
```


## Scanned for "nginx" word

![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1097005207830941757/image.png)

## Checked 1st responce
![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1097005620433006692/image.png)

## Checked 8th responce
![App Screenshot](https://cdn.discordapp.com/attachments/1096986540049182821/1097005960062574712/image.png)



## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
