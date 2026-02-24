#!/bin/bash
# Extract recent system errors

echo "=== Linux Log Triage ==="

if command -v journalctl >/dev/null 2>&1; then
    echo "Showing last 50 critical errors:"
    journalctl -p 3 -xb | tail -50
else
    echo "journalctl not available. Checking syslog..."
    tail -50 /var/log/syslog 2>/dev/null
fi

echo "Log triage complete."