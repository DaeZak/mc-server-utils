#!/bin/bash
. /etc/minecraft/env.conf
mcrcon -H localhost -P ${RCON_PORT} -p ${RCON_PASS} 'say "SERVER BACKUP STARTING. Server going readonly..."' save-all save-off

echo "Saving ramdrive to disk."
if [ ! -d "/mnt/ramdisk/${WORLD}/data" ]; then
  echo "Error.. Minecraft world not in ram"
else
  rsync -r -t "/mnt/ramdisk/${WORLD}/" "/srv/minecraft/instance/world_storage/${WORLD}/"
fi

mcrcon -H localhost -P ${RCON_PORT} -p ${RCON_PASS} 'say "SERVER BACKUP ENDED. Server going read-write..."' save-on
