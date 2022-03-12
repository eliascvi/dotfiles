#!/bin/bash

if [ $1 == 1 ]; then
    cd /run/media/elias/500GB/ && lfrun
elif [ $1 == 2 ]; then
    cd /run/media/elias/500GB/Study/ && lfrun
elif [ $1 == 3 ]; then
    cd $HOME && lfrun
elif [ $1 == 4 ]; then
    cd /run/media/elias/sus/ && lfrun
fi

