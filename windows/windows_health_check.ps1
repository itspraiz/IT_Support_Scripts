# windows_health_check
# PowerShell
Write-Host "=== Windows Health Check ==="

Write-Host "`nSystem Info:"
Get-ComputerInfo | Select-Object CsName, WindowsVersion, OsBuildNumber

Write-Host "`nUptime:"
(systeminfo | find "System Boot Time")

Write-Host "`nTop CPU Processes:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

Write-Host "`nDisk Space:"
Get-PSDrive C

Write-Host "`nNetwork:"
Get-NetIPConfiguration | Select-Object InterfaceAlias, IPv4Address