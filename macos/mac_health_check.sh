#!/bin/zsh
# Basic macOS system diagnostics for IT support

echo "=== macOS Health Check ==="

echo "\nComputer Name:"
scutil --get ComputerName

echo "\nLogged-in User:"
stat -f%Su /dev/console

echo "\nmacOS Version:"
sw_vers

echo "\nUptime:"
uptime

echo "\nCPU Info:"
sysctl -n machdep.cpu.brand_string

echo "\nMemory:"
vm_stat | grep "Pages free"

echo "\nDisk Usage:"
df -h /

echo "\nBattery Status:"
pmset -g batt 2>/dev/null

echo "\nNetwork IP:"
ipconfig getifaddr en0 2>/dev/null

echo "\nHealth check complete."
