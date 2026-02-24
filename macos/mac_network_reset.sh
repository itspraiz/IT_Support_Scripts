#!/bin/zsh
# Reset macOS network stack (basic level)

echo "=== macOS Network Reset ==="

echo "Flushing DNS cache..."
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Restarting Wi-Fi interface..."
networksetup -setairportpower en0 off
sleep 3
networksetup -setairportpower en0 on

echo "Current IP Address:"
ipconfig getifaddr en0 2>/dev/null

echo "Network reset complete."