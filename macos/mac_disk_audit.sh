#!/bin/zsh
# Disk usage analysis for macOS troubleshooting

echo "=== macOS Disk Audit ==="

echo "\nOverall Disk Usage:"
df -h /

echo "\nTop 10 Largest Folders in /Users:"
du -h /Users 2>/dev/null | sort -hr | head -10

echo "\nTop 10 Largest Applications:"
du -h /Applications 2>/dev/null | sort -hr | head -10

echo "\nDisk audit complete."