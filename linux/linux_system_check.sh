#!/bin/bash
# Basic Linux system diagnostics

echo "=== Linux System Check ==="

echo "Hostname:"
hostname

echo -e "\nUptime:"
uptime

echo -e "\nCPU Info:"
lscpu | grep "Model name"

echo -e "\nMemory Usage:"
free -h

echo -e "\nDisk Usage:"
df -h /

echo -e "\nLogged-in Users:"
who

echo -e "\nIP Address:"
hostname -I

echo "System check complete."