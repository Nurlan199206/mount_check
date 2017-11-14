#!/bin/bash
mount="//172.27.1.34/automatic_reports/chesn_slovo"
if grep -qs "$mount" /proc/mounts; then
  echo "It's mounted."
else
  echo "It's not mounted."
  mount "$mount"
  if [ $? -eq 0 ]; then
   echo "Mount success!"
  else
   echo "Something went wrong with the mount..."
  fi
fi