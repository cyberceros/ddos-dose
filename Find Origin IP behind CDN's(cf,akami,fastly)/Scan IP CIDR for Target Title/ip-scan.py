import requests
import socket
import ipaddress
from concurrent.futures import ThreadPoolExecutor
import urllib3
import sys

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# Replace with the target website's title
target_title = 'nginx'

# Get the IP range to scan from the command-line arguments
ip_range = sys.argv[1]

# Convert the IP range to a list of IP addresses
ip_list = [str(ip) for ip in ipaddress.IPv4Network(ip_range)]

def check_ip(ip_address):
    # Check for HTTP and HTTPS ports
    ports = [80, 443]

    for port in ports:
        # Create a socket object and set a timeout
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(1)

        # Attempt to connect to the IP address
        result = sock.connect_ex((ip_address, port))

        # If the connection was successful, make an HTTPS request and check for the target title in the response
        if result == 0:
            try:
                protocol = 'https' if port == 443 else 'http'
                response = requests.get(f'{protocol}://{ip_address}', verify=False)
                if target_title in response.text:
                    print(f'{ip_address} ({protocol}): \033[32mFound\033[0m')
            except:
                pass

# Create a thread pool with 10 threads
with ThreadPoolExecutor(max_workers=200) as executor:
    # Submit a task to the thread pool for each IP address in the range
    for ip_address in ip_list:
        executor.submit(check_ip, ip_address)
