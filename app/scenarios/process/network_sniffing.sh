#!/bin/bash

# Type: Process
# Policy: Network sniffing
# Collection:Process/NetworkSniffing.NetworkSniffExecuted

# Start tcpdump to capture for 5
sudo tcpdump -i any -W 1 -G 5 -w /tmp/output-%Y%m%d%H%M%S.pcap
