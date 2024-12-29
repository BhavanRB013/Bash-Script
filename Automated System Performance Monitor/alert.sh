#!/bin/bash

THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d '.' -f1)

if [ $CPU_USAGE -gt $THRESHOLD ]
then

	echo "WARNING: CPU Usage is above $THRESHOLD%" | mail -s "Hign CPU Usage Alert" bhavanrb567@gmail.com

fi
