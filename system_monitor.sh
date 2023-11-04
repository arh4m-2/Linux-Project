#!/bin/bash

while true
do
    clear  
    echo "                  System Monitoring Tool"
    echo "============================================================="
    echo "Date and Time: $(date)"
    echo "-------------------------------------------------------------"
    echo "Hostname: $(hostname)"
    echo "-------------------------------------------------------------"
    echo "Uptime: $(uptime)"
    echo "-------------------------------------------------------------"
    echo "CPU Usage: $(top -n 1 | grep Cpu)"
    echo "-------------------------------------------------------------"
    echo "Memory Usage:"
    free -m
    echo "-------------------------------------------------------------"
    echo "Disk Space Usage:"
    df -h
    echo "-------------------------------------------------------------"
    echo "Network Usage:"
    ifconfig | grep inet | grep netmask
   
    sleep 20
done
