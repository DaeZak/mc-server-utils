#!/bin/bash
. /etc/minecraft/env.conf
mcrcon -s -H localhost -P ${RCON_PORT} -p ${RCON_PASS} "$@" 
