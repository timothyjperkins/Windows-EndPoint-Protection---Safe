# Windows-EndPoint-Protection---Safe
PowerShell 5.1 script to enable certain parts of Microsoft Windows Endoint Protection
XML to enable features of Microsoft's EndPoint Protection without removing vital administrative features or disabling remote images.<br>
<br>
Enables:<br>
  Microsoft‑recommended system mitigations<br>
  Adds optional safe hardening<br>
  Does NOT enable “Block Remote Images”<br>
  Avoids all mitigations that break PowerShell 5.1, WMI, MMC, installers, .NET, or admin tools<br>
  Contains no Program‑level entries (system‑level only, safest for admin environments)<br>
<br>
Does NOT enable:<br>
  Mandatory ASLR (ForceRandomization)<br>
  Block Low Integrity Images<br>
  Block Non‑Microsoft Binaries<br>
  Strict CFG for individual apps<br>
  Block Remote Images<br>
  Per‑application mitigations<br>
<br>
Usage:<br>
Set-ProcessMitigation -PolicyFilePath https://github.com/timothyjperkins/Windows-EndPoint-Protection---Safe/blob/main/Endpoint%20Protection%20-%20Safe.xml<br>
<br>
Revert to Windows Defaults:<br>
Run the "Revert" script.<br>
