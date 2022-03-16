#!/usr/bin/env bash
# Purpose: Update all my Linode servers powered by Debian/Ubuntu Linux
# Author: Vivek Gite under GPL v2.x+
# ----------------------------------------
log="/tmp/apt-get.log"
>"${log}"
for s in ln.cbz0{1..5}
do 
   echo "Updating and patching $s, please wait..." | tee -a "${log}"
   ssh root@${s} -- apt-get -q -y update >/dev/null
   ssh root@${s} -- DEBIAN_FRONTEND=noninteractive apt-get -y -q upgrade >>"${log}"
done
echo "Check $log file for details."


