#!/bin/zshp
# Refresh JAMF inventory and confirm enrollment status

echo "=== JAMF Inventory Refresh ==="

# Check JAMF binary
if command -v jamf >/dev/null 2>&1; then
    echo "JAMF binary found."
else
    echo "JAMF not installed on this device."
    exit 1
fi

# Check enrollment status
echo "Checking enrollment status..."
profiles status -type enrollment

# Trigger inventory update
echo "Running JAMF recon..."
sudo jamf recon

echo "Inventory refresh complete."