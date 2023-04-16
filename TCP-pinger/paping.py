import socket
import time
import sys

# Get the IP address and port from the command line arguments
if len(sys.argv) != 3:
    print("Usage: python3 script.py <IP address> <port>")
    sys.exit(1)

ip_address = sys.argv[1]
port = int(sys.argv[2])

while True:
    # Create a TCP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # Set a timeout of 5 seconds
    sock.settimeout(0.5)

    # Get the current time
    start_time = time.time()

    # Attempt to connect to the IP address and port
    try:
        sock.connect((ip_address, port))
        end_time = time.time()
        print(f"\033[32mConnected to \033[33m{ip_address}:{port}\033[0m in {end_time - start_time:.3f} seconds\033[0m")
    except socket.error as e:
        print(f"\033[31mUnable to connect to \033[33m{ip_address}:{port}\033[0m - {e}\033[0m")

    # Close the socket
    sock.close()

    # Wait for 1 second before attempting to reconnect
    time.sleep(0.5)
