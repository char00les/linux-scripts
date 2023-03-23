#!/bin/bash
#Date: 03-21-2023
#Comment: System

#Display kernel version 
uname -r

#Get root disk usage 
df -h

#Get memory usage 
cat /proc/meminfo

#Get system time 
timedatectl status

#Set system timezone
timedatectl list-timezones
sudo timedatectl set-timezone <zone>

#Get all running/failing services
systemctl --state running
systemctl --state failed

#Start, stop or restart a service
systemctl start/stop/restart <service>

#Get the full content of a systemd unit including overrides
systemctl cat <service>

#Edit a systemd avoiding conflicts with package updates
systemctl edit <service>

#Monitor new logs for a service
journalctl -u <service> --since now -f

#Monitor all logs since boot 
journalctl --boot 0

#Get the list of recent logins 
last

#Display running processes h
top

#Kill process by id 
kill <process id>

#Kill process by name 
pkill <process name>

#Run command in the background
<command> &

# staying alive after hangup and logging to file
nohup <command> >> /var/log/yourcommand.log 2>&1 &

#Display background commands 
jobs

#Bring command <n> to the foreground 
fg <n>