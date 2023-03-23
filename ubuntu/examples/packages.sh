#!/bin/bash
#Date: 03-21-2023
#Comment: Packages

#Search for packages
apt search <string>
snap find <string>

#List available package versions
apt-cache policy <package>

#List available updates
apt list --upgradable

#Apply all available updates
sudo apt update && sudo apt upgrade

#Install from the Ubuntu Archive:
sudo apt install <package>

#Install from the Snap Store:
sudo snap install <package>

#Remove the package
sudo apt remove <package>

#Remove the package
sudo apt remove <package>

#Remove the package and all its
configuration files
sudo apt purge <package>

#Reinstall broken package
sudo apt install -f --reinstall <package>