#!/bin/bash

# Free Space
df -H /home | grep -vE '^Filesystem' | awk '{print $4}'

# Used %
#df -H /home | grep -vE '^Filesystem' | awk '{print $5}'

# Used in GB
#df -H /home | grep -vE '^Filesystem' | awk '{print $3}'
