#!/bin/bash

LOG_FILE=system_log.txt


echo "----------------------------------------------">>$LOG_FILE

date>>$LOG_FILE

echo "CPU Usage: ">>$LOG_FILE

top -bn1 | grep "Cpu(s)" >> $LOG_FILE

echo "Info about cpu is updated in '$LOG_FILE' "

echo "-----------------------------------------------">>$LOG_FILE
