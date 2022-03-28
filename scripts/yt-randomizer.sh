#!/bin/bash
link=$(grep "youtube" ~/scripts/yt.txt | sort -R | head -n 1)
echo $link
mpv $link
