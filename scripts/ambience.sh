#!/bin/bash

# Choose random link
link=$(grep "https" ~/scripts/music.txt | sort -R | head -n 1)

# Get Album Photo
#curl $link > ~/scripts/.cache/link
#photo=$(grep -wo '<img src="https.*.jpg"' ~/scripts/.cache/link | head -n 1 | grep -o 'https.*.jpg')
#echo $photo >> ~/scripts/albumphoto.txt &

# Display title & play link
title=$(grep -o "album.*" ~/scripts/music.txt | awk -F"album" '/album/{print$2}' | sort -R | head -n 1 | sed 's/[-]/ /g' | sed 's/[/]/> /g' | sed 's/[-]/ /g' | sed 's/[/]/> /g' | awk '{for(i=1;i<=NF;i++)sub(/./,toupper(substr($i,1,1)),$i)}1' )
echo "Playing $title"
mpv $link
