#!/bin/sh
#echo -e "$1\n$1" | passwd root
echo "root:$1" | chpasswd

# docker run -d --restart unless-stopped -p 9999:9999 4babushkin/gorestip
