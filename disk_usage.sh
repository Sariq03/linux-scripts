#!/bin/bash
threshold=80
usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ "$usage" -gt "$threshold" ]; then
  echo "Warning: Disk usage is above ${threshold}%!"
else
  echo "Disk usage is under control: ${usage}%"
fi

