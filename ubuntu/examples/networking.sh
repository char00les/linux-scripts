#!/bin/bash
#Date: 03-21-2023
#Comment: Networking

#Get the IP address of all interfaces
networkctl status

#Display all IP addresses of the host
hostname -I

#Enable/disable interface
ip link set <interface> up
ip link set <interface> down

#Show routes
ip route

#Which route will be used to reach a host
ip route get <IP>