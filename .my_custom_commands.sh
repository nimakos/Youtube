#!/bin/bash

# converts and saves youtube video to mp3
function download_audio() {
	# youtube-dl-f bestaudio $1
  	youtube-dl -o "~/Music/%(title)s.%(ext)s" --extract-audio --audio-format mp3 $1
}

# converts and saves youtube video to Video
function download_video() {
	youtube-dl -o "~/Music/%(title)s.%(ext)s"  -f bestvideo+bestaudio $1
}

function make_updates() {
	sudo ln -s /usr/bin/python3 /usr/local/bin/python
	sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
	sudo chmod a+x /usr/local/bin/youtube-dl
	sudo apt-get install -y ffmpeg
	sudo youtube-dl -U	
}

# cleans the system
function clean() {
  sudo apt-get autoremove
  sudo du -sh /var/cache/apt
  sudo apt-get autoclean
  sudo apt-get clean
  sudo du -sh ~/.cache/thumbnails
  sudo rm -rf ~/.cache/thumbnails/*
}

# Sound properties
function sound() {
  alsamixer
  alsactl store
}
