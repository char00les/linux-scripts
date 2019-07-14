#!/bin/bash

# You must first download ffmpeg inorder for you the merge the the video and audio
# sudo apt-get install ffmpeg

#The command that the script with execute
youtube-dl -f bestvideo+bestaudio $_


#Seconardy option if the first one doesn't work
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "link to youtube video"
