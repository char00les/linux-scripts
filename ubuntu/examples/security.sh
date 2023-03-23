#!/bin/bash
#Date: 03-21-2023
#Comment: Security 

#Show which users are logged in
w

#Get user password expiration date
chage -l <user>

#Set user password expiration date
sudo chage <user>

#Lock a user account
sudo passwd -l <user>

#Unlock a user password
sudo passwd -u <user>

#Automatically detect and ban abusive IP addresses
sudo apt install fail2ban

#Show banned IP addresses
sudo fail2ban-client status
sudo fail2ban-client status <jail>

#Which route will be used to reach a host
ip route get <IP>

#List open ports and associated processes
sudo ss -tulpn

#
#Manage firewall rules
#

#Enable firewall:
sudo ufw enable

#List rules: 
sudo ufw status
#Allow port: 
sudo ufw allow <port>
#Deny port: 
sudo ufw deny <port>

#Connect remotely through SSH
ssh <user>@<host IP>