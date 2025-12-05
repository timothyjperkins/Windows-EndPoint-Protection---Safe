# Windows-EndPoint-Protection---Safe
XML to enable features of Microsoft's EndPoint Protection without removing vital administrative features or disabling remote images.

Enables all Microsoft‑recommended system mitigations
Adds optional safe hardening
Does NOT enable “Block Remote Images” (as you requested)
Avoids all mitigations that break PowerShell 5.1, WMI, MMC, installers, .NET, or admin tools
Contains no Program‑level entries (system‑level only, safest for admin environments)

Does NOT enable:
  Mandatory ASLR (ForceRandomization)
  Block Low Integrity Images
  Block Non‑Microsoft Binaries
  Strict CFG for individual apps
  Block Remote Images (per your request)
  Per‑application mitigations (you can ask me to add them later)

Usage:
Set-ProcessMitigation -PolicyFilePath https://github.com/timothyjperkins/Windows-EndPoint-Protection---Safe/blob/main/Endpoint%20Protection%20-%20Safe.xml

Revert to Windows Defaults:
Run the "Revert" script.
