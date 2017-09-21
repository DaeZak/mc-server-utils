#!/bin/bash
#
#Author: Douglas Early
#
# This script simply sets up Minecraft
# to run as a proper service in init.d
# style systems (given a properly written
# init.d script that specificies behaviors
# for given run levels)
#
# Perhaps someday we will switch to upstart
# or System V

RUNLEVELS=(
  rc0.d
  rc1.d
  rc2.d
  rc3.d
  rc4.d
  rc5.d
  rc6.d
)

echo "Establishing Minecraft run levels..."
for lvl in ${RUNLEVELS[@]}; do
  case $lvl in
    rc0.d)
      echo "$lvl => S33minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S33minecraft
      ;;
    rc1.d)
      echo "$lvl => S25minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S25minecraft
      ;;
    rc2.d)
      echo "$lvl => S80minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S80minecraft
      ;;
    rc3.d)
      echo "$lvl => S80minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S80minecraft
      ;;
    rc4.d)
      echo "$lvl => S80minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S80minecraft
      ;;
    rc5.d)
      echo "$lvl => S80minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S80minecraft
      ;;
    rc6.d)
      echo "$lvl => S33minecraft"
      cd "/etc/$lvl" && sudo ln -s /etc/init.d/minecraft S33minecraft
      ;;
  esac
done

echo "Done."
