#!/bin/bash
. /etc/minecraft/env.conf

NOW=`date "+%Y-%m-%d_%Hh%M"`
BACKUP_FILE="/var/minecraft/backups/${WORLD}/${NOW}.tar"

if [ ! -d "/var/minecraft/backups/${WORLD}" ]; then
  mkdir "/var/minecraft/backups/${WORLD}"
fi

echo "Backing up minecraft world..."
tar -C "/srv/minecraft/instance/world_storage" -cf "${BACKUP_FILE}" "${WORLD}"

echo "Compressing backup..."
gzip -f "${BACKUP_FILE}"
echo "Done."
