#!/bin/bash
df /dev/sdc1 -H | grep -vE '^Filesystem' | awk '{print $4}'
