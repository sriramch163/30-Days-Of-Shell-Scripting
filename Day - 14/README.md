## Day 14 – Active Network Connections Viewer

This script displays active network connections and listening ports.

Why this is useful:
Helps identify which services are running and which ports are open on the system.

Usage:
./day-14-active-connections.sh


Example Output
Netid  State   Recv-Q  Send-Q   Local Address:Port   Process
tcp    LISTEN  0       128      0.0.0.0:22            sshd
tcp    LISTEN  0       128      0.0.0.0:8080          java
tcp    LISTEN  0       128      0.0.0.0:80            nginx
udp    UNCONN  0       0        0.0.0.0:68            dhclient