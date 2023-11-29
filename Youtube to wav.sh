#!/bin/bash

url=$(zenity --entry --text="Enter URL:" --title="Download Audio")

if [ $? -ne 0 ]; then
  exit 0
fi

command="yt-dlp -x --audio-format wav --output ~/Downloads/%(title)s.%(ext)s "ytsearch":\"$url\""

echo "Downloading audio..."
$command
echo "Downloaded to ~/Downloads"

exit 0