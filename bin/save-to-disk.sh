#!/bin/bash
. /etc/minecraft/env.conf
mcrcon -s -H localhost -P ${RCON_PORT} -p ${RCON_PASS} save-all save-off

echo "Saving ramdrive to disk."
if [ ! -d "/mnt/ramdisk/${WORLD}/data" ]; then
  echo "Error.. Minecraft world not in ram"
else
  rsync -r -t "/mnt/ramdisk/${WORLD}/" "/srv/minecraft/instance/world_storage/${WORLD}/"
fi

mcrcon -s -H localhost -P ${RCON_PORT} -p ${RCON_PASS} save-on
