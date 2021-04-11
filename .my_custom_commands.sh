#!/bin/bash

# download audio from youtube
function download_audio() {
	youtube-dl -U
	youtube-dl -f bestaudio $1
}

# download video from youtube
function download_video() {
	youtube-dl -U
	youtube-dl -f best $1
}