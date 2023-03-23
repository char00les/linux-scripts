#!/bin/bash
#Date: 032223
#Comment: Install Github Desktop
#Reference:https://gist.github.com/berkorbay/6feda478a00b0432d13f1fc0a50467f1
#Reference:https://linuxhint.com/install-and-use-github-desktop-on-ubuntu/

echo "Installing Github Desktop"

sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb

if [[ $(dpkg -l | grep gdebi) ]]; then
	echo "Already Installed"
else
	echo "Not Installed"
	sudo apt-get install gdebi-core 
fi

sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb

echo "Done"