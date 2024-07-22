#!/usr/bin/env bash
#curl -o /tmp/mcrcon-0.7.2-linux-x86-32.tar.gz https://github.com/Tiiffi/mcrcon/releases/download/v0.7.2/mcrcon-0.7.2-linux-x86-32.tar.gz
#cd /tmp
#tar -xvf mcrcon-0.7.2-linux-x86-32.tar.gz
mv mcrcon /usr/bin/
chown root:root /usr/bin/mcrcon
chmod 755 /usr/bin/mcrcon
