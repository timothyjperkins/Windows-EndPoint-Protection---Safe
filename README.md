# Windows-EndPoint-Protection---Safe
XML to enable features of Microsoft's EndPoint Protection without removing vital administrative features or disabling remote images.

Enables all Microsoft‑recommended system mitigations
Adds optional safe hardening
Does NOT enable “Block Remote Images” (as you requested)
Avoids all mitigations that break PowerShell 5.1, WMI, MMC, installers, .NET, or admin tools
Contains no Program‑level entries (system‑level only, safest for admin environments)

Usage: Set-ProcessMitigation -PolicyFilePath https://github.com/timothyjperkins/Windows-EndPoint-Protection---Safe/ExploitProtection-Safe.xml
