#!/bin/bash
#Date: 03-21-2023
#Comment: Files


#List files with permissions and dates
ll

#
#Common file operations
#

#create empty: 
touch <filename>
#create with size: 
fallocate -l <size> <filename>

#create with content: 
echo "<content>" > <filename>

#Quick file search
locate <filename>

#Search string in file
grep <string> <filename>

#Search string recursively in directory
grep -Iris <string> <directory>

#Find files modified in the last <n> minutes
## eg. find . -mmin -5 -type f
find <directory> -mmin -<n> -type f

#Show only the nth column
## eg. col2 “,” foo.csv
col<n> “<separator>” <filename>

#Display file paginated
less <filename>

#Display first <n> lines
head -n <n> <filename>

#Display last <n> lines
tail -n <n> <filename>

#Follow file content as it increases
tail -f <filename>

#
# Pack a directory into an archive
#

#tar.gz: 
tar cvzf <target>.tar.gz <source dir>
#zip: 
zip -r <target> <source dir>

#
#Unpack an archive
#

#tar.gz: 
tar xf <tar.gz file>

#zip: 
unzip <zip file>

#Copy file to remote server
## eg. rsync config.yaml admin@192.0.0.0:/config
rsync <filename> <user@server>:<destination>


#Copy directory recursively from remote server
## eg. rsync -avruz admin@192.0.0.0:/config /tmp
rsync -avruz <user@server>:<source> <destination>

