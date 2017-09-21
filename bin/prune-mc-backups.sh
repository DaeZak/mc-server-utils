#!/bin/bash

#Get the value of the -p flag (prune)
#which determines the threshold for 
#pruning backups files
while getopts p:t: opts; do
  case ${opts} in
    p) PRUNE_VAL=${OPTARG} ;;
    t) PRUNE_TYP=${OPTARG} ;;
  esac
done

#If no default value is set we will
#prune down to five backups
if [ -z ${PRUNE_VAL+x} ]; then
  PRUNE_VAL=5
fi

#We can do either backups or snapshots
#...backups by default
case $PRUNE_TYP in
  backup) PRUNE_TYP=backups ;;
  snapshot) PRUNE_TYP=snapshots ;;
  *) PRUNE_TYP=backups ;;
esac

echo 'Changing directory...'
cd "/media/remote.share/backups/minecraft/$PRUNE_TYP"
echo "Now in ${PWD}"

#ls -1 will give only files (no directories) and
#we pipe that into wc -l to count the lines.
#this gives us how many file are in the directory
FCOUNT="$(ls -1 | wc -l)"
echo "${FCOUNT} files found"
echo "Pruning threshold is $PRUNE_VAL"

if [ $FCOUNT -gt $PRUNE_VAL ]; then
  #Track how far down the list we are
  #in deleting files
  COUNTR=0
  #Track how many files we have deleted
  PRUNED=0

  #Get files only, sorted in reverse
  #order by time modified (most recent files will be
  #at the bottom of the list
  for f in `ls -1tr`
  do
    PCOUNT=$(expr $FCOUNT - $COUNTR)
    
    if [ $PCOUNT -gt $PRUNE_VAL ]; then
      `sudo rm -f "$f"`
      RETCODE=$?

      if [ $RETCODE -eq 0 ]; then
        echo "Pruned $f"
        PRUNED=$(expr $PRUNED + 1)
      else
        printf "Error: [%d] removing file $f\n" $ret_code
        exit $ret_code
      fi
    fi

    COUNTR=$(expr $COUNTR + 1)
  done

  echo "Pruned $PRUNED files"
else
  echo "No work to do...quitting"
fi
