#!/bin/bash
photo=$(grep -wo '<img src="https.*.jpg"' link | head -n 1 | grep -o 'https.*.jpg')
curl $photo > cover.jpg
