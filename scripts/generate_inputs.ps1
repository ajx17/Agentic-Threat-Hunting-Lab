```powershell
# Forces the Splunk Universal Forwarder to read local Windows Event Logs
$config = @"
[WinEventLog://Application]
disabled = 0
[WinEventLog://Security]
disabled = 0
[WinEventLog://System]
disabled = 0
"@
```

# Write the config file
$config | Out-File -FilePath "C:\Program Files\SplunkUniversalForwarder\etc\system\local\inputs.conf" -Encoding ASCII

# Bounce the service to apply changes
Restart-Service -Name SplunkForwarder
