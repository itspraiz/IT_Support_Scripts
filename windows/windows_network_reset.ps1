# windows_network_reset
# PowerShell
Write-Host "Resetting Windows network stack..."

ipconfig /flushdns
netsh winsock reset
netsh int ip reset

Write-Host "Releasing IP..."
ipconfig /release
ipconfig /renew

Write-Host "Network reset complete. Restart recommended."