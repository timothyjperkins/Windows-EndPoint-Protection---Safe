<#
    Revert all Exploit Protection settings to Windows defaults.
    Safe to run as SYSTEM or Administrator.
#>

Write-Host "Resetting Windows Exploit Protection to default Microsoft settings..." -ForegroundColor Cyan

# Reset system-wide mitigations
Set-ProcessMitigation -System -Reset

# Reset per-application (registry) mitigations
Set-ProcessMitigation -RegistryConfig -Reset

Write-Host "Windows Exploit Protection has been reverted to default." -ForegroundColor Green

# Verify current system mitigations
Get-ProcessMitigation -System
